package com.datapath.indicatorsresolver.service.checkIndicators;

import com.datapath.indicatorsresolver.model.TenderDimensions;
import com.datapath.indicatorsresolver.model.TenderIndicator;
import com.datapath.persistence.entities.Indicator;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.*;
import java.util.stream.Collectors;

import static java.util.Objects.isNull;
import static java.util.Objects.nonNull;


@Service
@Slf4j
public class Risk_2_16_2Extractor extends BaseExtractor {

    /*
    Не унікальний ЄДРПОУ учасника (конкурентні закупівлі)
    */

    private final String INDICATOR_CODE = "RISK2-16_2";

    private boolean indicatorsResolverAvailable;

    public Risk_2_16_2Extractor() {
        indicatorsResolverAvailable = true;
    }

    public void checkIndicator(ZonedDateTime dateTime) {
        try {
            indicatorsResolverAvailable = false;
            Indicator indicator = getActiveIndicator(INDICATOR_CODE);
            if (nonNull(indicator) && tenderRepository.findMaxDateModified().isAfter(ZonedDateTime.now().minusHours(AVAILABLE_HOURS_DIFF))) {
                checkRisk_2_16_2Indicator(indicator, dateTime);
            }
        } catch (Exception ex) {
            log.error(ex.getMessage(), ex);
        } finally {
            indicatorsResolverAvailable = true;
        }
    }

    public void checkIndicator() {
        if (!indicatorsResolverAvailable) {
            log.info(String.format(INDICATOR_NOT_AVAILABLE_MESSAGE_FORMAT, INDICATOR_CODE));
            return;
        }
        try {
            indicatorsResolverAvailable = false;
            Indicator indicator = getActiveIndicator(INDICATOR_CODE);
            if (nonNull(indicator) && tenderRepository.findMaxDateModified().isAfter(ZonedDateTime.now().minusHours(AVAILABLE_HOURS_DIFF))) {
                ZonedDateTime dateTime = isNull(indicator.getDateChecked())
                        ? ZonedDateTime.now(ZoneId.of("UTC")).minus(Period.ofYears(1)).withHour(0)
                        : indicator.getLastCheckedDateCreated();
                checkRisk_2_16_2Indicator(indicator, dateTime);
            }
        } catch (Exception ex) {
            log.error(ex.getMessage(), ex);
        } finally {
            indicatorsResolverAvailable = true;
        }
    }


    private void checkRisk_2_16_2Indicator(Indicator indicator, ZonedDateTime dateTime) {
        int size = 100;
        int page = 0;

        while (true) {

            List<Object[]> tendersInfo = tenderRepository.findTendersWithCPVAndPendingContractsCount(
                    dateTime,
                    Arrays.asList(indicator.getProcedureStatuses()),
                    Arrays.asList(indicator.getProcedureTypes()),
                    Arrays.asList(indicator.getProcuringEntityKind()),
                    PageRequest.of(page, size));

            if (tendersInfo.isEmpty()) {
                break;
            }

            Set<String> tenderIds = tendersInfo.stream().map(item -> item[0].toString()).collect(Collectors.toSet());

            Map<String, TenderDimensions> dimensionsMap = getTenderDimensionsWithIndicatorLastIteration(tenderIds, INDICATOR_CODE);

            Map<String, Long> maxTendersIndicatorIteration = extractDataService
                    .getMaxTenderIndicatorIteration(tenderIds, INDICATOR_CODE);

            Map<String, Integer> maxTendersIterationData = extractDataService
                    .getMaxTendersIterationData(maxTendersIndicatorIteration, INDICATOR_CODE);

            tendersInfo = tendersInfo.stream()
                    .filter(tender -> !maxTendersIterationData.containsKey(tender[0].toString()) ||
                            maxTendersIterationData.get(tender[0].toString()).equals(-2)).collect(Collectors.toList());


            tendersInfo.forEach(tenderInfo -> {
                String tenderId = tenderInfo[0].toString();
                try {
                    TenderDimensions tenderDimensions = dimensionsMap.get(tenderId);
                    List<String> cpvs = Arrays.asList(tenderInfo[1].toString().split(","));
                    Integer pendingContractsCount = Integer.parseInt(tenderInfo[2].toString());

                    Integer indicatorValue;

                    if (pendingContractsCount == 0) {
                        indicatorValue = -2;
                    } else {
                        List<String> filteredList = cpvs.stream()
                                .filter(item -> item.startsWith("09310000"))
                                .collect(Collectors.toList());

                        indicatorValue = filteredList.isEmpty() ? 0 : 1;
                    }

                    TenderIndicator tenderIndicator = new TenderIndicator(tenderDimensions, indicator,
                            indicatorValue, new ArrayList<>());
                    uploadIndicatorIfNotExists(tenderIndicator.getTenderDimensions().getId(), INDICATOR_CODE, tenderIndicator);
                } catch (Exception ex) {
                    log.error(ex.getMessage(), ex);
                    log.info(String.format(TENDER_INDICATOR_ERROR_MESSAGE, INDICATOR_CODE, tenderId));
                }
            });


            ZonedDateTime maxTenderDateCreated = getMaxTenderDateCreated(dimensionsMap, dateTime);
            indicator.setLastCheckedDateCreated(maxTenderDateCreated);
            indicatorRepository.save(indicator);

            dateTime = maxTenderDateCreated;
        }
        ZonedDateTime now = ZonedDateTime.now();
        indicator.setDateChecked(now);
        indicatorRepository.save(indicator);

    }

}
