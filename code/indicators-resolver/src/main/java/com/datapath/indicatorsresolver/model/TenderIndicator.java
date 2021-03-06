package com.datapath.indicatorsresolver.model;

import com.datapath.persistence.entities.Indicator;
import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.List;

@Data
@AllArgsConstructor
public class TenderIndicator {
    TenderDimensions tenderDimensions;
    Indicator indicator;
    Integer value;
    List<String> lots;
}
