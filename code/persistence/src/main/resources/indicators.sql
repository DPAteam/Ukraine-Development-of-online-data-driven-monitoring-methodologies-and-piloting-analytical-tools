INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-1', 30, 'RISK1-1', NULL, 0.5, NULL, TRUE, NULL,
        'Використання замовником переговорної процедури закупівлі за відсутності законодавчих підстав', '{active}',
        '{negotiation,negotiation.quick}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Використання замовником переговорної процедури закупівлі за відсутності законодавчих підстав', 'Award',
        'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-2_1', 30, 'RISK1-2_1', NULL, 0.5, NULL, TRUE, NULL,
        'Відкриті торги на закупівлю товарів і послуг проведені з порушенням порядку оприлюднення, розкриття та розгляду тендерних пропозицій, електронного аукціону, передбачених Законом',
        '{active.tendering,active.enquiries}', '{belowThreshold,aboveThresholdUA}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Відкриті торги на закупівлю товарів і послуг проведені з порушенням порядку оприлюднення, розкриття та розгляду тендерних пропозицій, електронного аукціону, передбачених Законом',
        '', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-2_2', 30, 'RISK1-2_2', NULL, 0.5, NULL, TRUE, NULL,
        'Відкриті торги на закупівлю робіт проведені з порушенням порядку оприлюднення, розкриття та розгляду тендерних пропозицій, електронного аукціону, передбачених Законом',
        '{active.tendering,active.enquiries,complete}', '{belowThreshold,aboveThresholdUA}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Відкриті торги на закупівлю робіт проведені з порушенням порядку оприлюднення, розкриття та розгляду тендерних пропозицій, електронного аукціону, передбачених Законом',
        '', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-3_1', 30, 'RISK1-3_1', NULL, 0.1, NULL, TRUE, NULL,
        'Відсутність накладеного замовником електронного цифрового підпису на документах, що підлягають оприлюдненню',
        '{active.awarded,active,complete,active.pre-qualification,active.tendering,active.pre-qualification.stand-still,active.auction,active.qualification,active.enquiries}',
        '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Відсутність накладеного замовником електронного цифрового підпису на документах, що підлягають оприлюдненню',
        'Tendering', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-3_2', 30, 'RISK1-3_2', NULL, 0.1, NULL, TRUE, NULL,
        'Відсутність накладеного замовником електронного цифрового підпису при визначенні переможця тендеру та прийнятті рішення про намір укласти договір про закупівлю',
        '{active.qualification,active.awarded}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Відсутність накладеного замовником електронного цифрового підпису при визначенні переможця тендеру та прийнятті рішення про намір укласти договір про закупівлю',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-3_3', 30, 'RISK1-3_3', NULL, 0.1, NULL, TRUE, NULL,
        'Відсутність накладеного електронного цифрового підпису при оприлюдненні договору про закупівлю та повідомленні про внесення змін до нього',
        '{complete}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Відсутність накладеного електронного цифрового підпису при оприлюдненні договору про закупівлю та повідомленні про внесення змін до нього',
        'Contract', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-4_1', 30, 'RISK1-4_1', NULL, 0.2, NULL, TRUE, NULL,
        'Перевищення строку розгляду тендерної пропозиції учасника, яка за результатами оцінювання визначена найбільш економічно вигідною за процедурою "відкриті торги"',
        '{active.qualification}', '{aboveThresholdUA}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Перевищення строку розгляду тендерної пропозиції учасника, яка за результатами оцінювання визначена найбільш економічно вигідною за процедурою "відкриті торги"',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-4_2', 30, 'RISK1-4_2', NULL, 0.2, NULL, TRUE, NULL,
        'Перевищення строку розгляду тендерної пропозиції учасника, яка за результатами оцінки визначена найбільш економічно вигідною за процедурою "відкриті торги"',
        '{active.qualification}', '{aboveThresholdUA}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Перевищення строку розгляду тендерної пропозиції учасника, яка за результатами оцінки визначена найбільш економічно вигідною за процедурою "відкриті торги"',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-5_1', 30, 'RISK1-5_1', NULL, 0.1, NULL, TRUE, NULL,
        'Розмір забезпечення тендерної пропозиції визначено з порушенням встановлених Законом граничних значень під час проведення відкритих торгів на закупівлю товарів або послуг',
        '{active.tendering,active.enquiries}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Розмір забезпечення тендерної пропозиції визначено з порушенням встановлених Законом граничних значень під час проведення відкритих торгів на закупівлю товарів або послуг',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-5_2', 30, 'RISK1-5_2', NULL, 0.1, NULL, TRUE, NULL,
        'Розмір забезпечення тендерної пропозиції визначено з порушенням встановлених Законом граничних значень під час проведення відкритих торгів на закупівлю робіт',
        '{active.tendering,active.enquiries}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Розмір забезпечення тендерної пропозиції визначено з порушенням встановлених Законом граничних значень під час проведення відкритих торгів на закупівлю робіт',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-6', 30, 'RISK1-6', NULL, 0.3, NULL, TRUE, NULL,
        'Відсутність оприлюдненого договору про закупівлю за результатами процедури закупівлі', '{complete}',
        '{aboveThresholdUA,aboveThresholdEU,negotiation,negotiation.quick}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Відсутність оприлюдненого договору про закупівлю за результатами процедури закупівлі', 'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-8_1', 30, 'RISK1-8_1', NULL, 0.3, NULL, TRUE, NULL,
        'Завчасне укладення та оприлюднення замовником договору про закупівлю за результатами проведення процедури закупівлі',
        '{active.awarded,active.qualification,complete}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Завчасне укладення та оприлюднення замовником договору про закупівлю за результатами проведення процедури закупівлі',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-8_2', 30, 'RISK1-8_2', NULL, 0.2, NULL, TRUE, NULL,
        'Несвоєчасне укладання замовником договору про закупівлю за результатами проведення процедури закупівлі',
        '{active.awarded,active.qualification,complete}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Несвоєчасне укладання замовником договору про закупівлю за результатами проведення процедури закупівлі',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-10_1', 30, 'RISK1-10_1', NULL, 0.5, NULL, TRUE, NULL,
        'Договір про закупівлю товарів або послуг, укладений з порушенням вимог Закону', '{complete}', '{reporting}',
        '{general,authority,central,social,special}', 'Violation of national regulations',
        'Договір про закупівлю товарів або послуг, укладений з порушенням вимог Закону', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-10_2', 30, 'RISK1-10_2', NULL, 0.5, NULL, TRUE, NULL,
        'Договір про закупівлю робіт, укладений з порушенням вимог Закону', '{complete}', '{reporting}',
        '{general,authority,central,social,special}', 'Violation of national regulations',
        'Договір про закупівлю робіт, укладений з порушенням вимог Закону', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-10_3', 30, 'RISK1-10_3', NULL, 0.5, NULL, TRUE, NULL,
        'Незастосування процедур закупівлі товарів або послуг, визначених Законом',
        '{active.tendering,active.enquiries}', '{belowThreshold}', '{general,authority,central,social,special}',
        'Violation of national regulations', 'Незастосування процедур закупівлі товарів або послуг', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-10_4', 30, 'RISK1-10_4', NULL, 0.5, NULL, TRUE, NULL,
        'Незастосування процедур закупівлі робіт, визначених Законом', '{active.tendering,active.enquiries}',
        '{belowThreshold}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Незастосування процедур закупівлі робіт, визначених Законом', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-12', 30, 'RISK1-12', NULL, 0.2, NULL, TRUE, NULL,
        'Ненадання або несвоєчасне надання роз''яснень замовником щодо змісту тендерної документації',
        '{active.tendering,active.enquiries}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Ненадання або несвоєчасне надання роз''яснень замовником щодо змісту тендерної документації', 'Award',
        'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-13_1', 30, 'RISK1-13_1', NULL, 0.5, NULL, TRUE, NULL, 'Неоприлюднення тендерної документації',
        '{active.qualification,active.awarded}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations', 'Неоприлюднення тендерної документації', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-13_2', 30, 'RISK1-13_2', NULL, 0.2, NULL, TRUE, NULL,
        'Порушення строку оприлюднення тендерної документації під час проведення відкритих торгів',
        '{active.qualification}', '{aboveThresholdUA}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Порушення строку оприлюднення тендерної документації під час проведення відкритих торгів', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-13_3', 30, 'RISK1-13_3', NULL, 0.2, NULL, TRUE, NULL,
        'Порушення строку оприлюднення тендерної документації під час проведення відкритих торгів із публікацією англійською мовою',
        '{active.qualification,complete}', '{aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Порушення строку оприлюднення тендерної документації під час проведення відкритих торгів із публікацією англійською мовою',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK1-14', 30, 'RISK1-14', NULL, 0.5, NULL, TRUE, NULL,
        'Переможець торгів був обраний за відсутності документів тендерної пропозиції',
        '{active.qualification,active.awarded,complete}', '{aboveThresholdEU,aboveThresholdUA}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Переможець торгів був обраний за відсутності документів тендерної пропозиції', 'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-1', 30, 'RISK2-1', NULL, 0.5, NULL, FALSE, NULL,
        'Застосування переговорної процедури закупівлі (попередньо двічі відмінено торги через відсутність достатньої кількості учасників) із збільшенням очікуваної вартості [та кількості ] закупівлі більше ніж на [30%/40%/50%] ДПА: (В переговорній процедурі закупівлі (причина двічі відмінені торги) замовник значним чином (більше [10%]) змінив кількість товару який закупає, при чому очікувана вартість не змінюється, або змінена не суттєво (менше 10%)).',
        '{active}', '{negotiation,negotiation.quick}', '{general,authority,central,social,special}', 'Manipulations with unit price',
        'Застосування переговорної процедури закупівлі (попередньо двічі відмінено торги через відсутність достатньої кількості учасників) із збільшенням очікуваної вартості [та кількості ] закупівлі більше ніж на [30%/40%/50%] ДПА: (В переговорній процедурі закупівлі (причина двічі відмінені торги) замовник значним чином (більше [10%]) змінив кількість товару який закупає, при чому очікувана вартість не змінюється, або змінена не суттєво (менше 10%)).',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-2', 30, 'RISK2-2', NULL, 0.2, NULL, FALSE, NULL,
        'Відкрита процедура в якій постачальник виступає постачальником тільки для цього Замовника по конкурентних торгах. Переможцем став постійний Постачальник (уклав більше ніж 3 контракти) Замовника, який ніколи не укладав контрактів з іншими Замовниками.',
        '{active.awarded,active.qualification}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Відкрита процедура в якій постачальник виступає постачальником тільки для цього Замовника по конкурентних торгах. Переможцем став постійний Постачальник (уклав більше ніж 3 контракти) Замовника, який ніколи не укладав контрактів з іншими Замовниками.',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-2_1', 30, 'RISK2-2_1', NULL, 0.2, NULL, TRUE, NULL,
        'Відкрита процедура з дискваліфікаціями, в якій постачальник виступає постачальником тільки для цього Замовника по конкурентних торгах. Переможцем став постійний Постачальник (уклав більше ніж 3 контракти) Замовника, який ніколи не укладав контрактів з іншими Замовниками.',
        '{active.awarded,active.qualification}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Відкрита процедура з дискваліфікаціями, в якій постачальник виступає постачальником тільки для цього Замовника по конкурентних торгах. Переможцем став постійний Постачальник (уклав більше ніж 3 контракти) Замовника, який ніколи не укладав контрактів з іншими Замовниками.',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-2_2', 30, 'RISK2-2_2', NULL, 0.4, NULL, FALSE, NULL,
        'Постачальник виступає учасником тільки для цього Замовника по конкурентних торгах.',
        '{active.awarded,active.qualification}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Постачальник виступає учасником тільки для цього Замовника по конкурентних торгах.', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-3', 30, 'RISK2-3', NULL, 0.2, NULL, FALSE, NULL,
        'Переможець торгів виграв усі лоти тендеру (тендер на 5+ лотів, що відбулися).', '{active.awarded}',
        '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Переможець торгів виграв усі лоти тендеру (тендер на 5+ лотів, що відбулися).', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-4', 30, 'RISK2-4', NULL, 0.4, NULL, FALSE, NULL,
        'Переможець торгів виграв усі лоти тендеру, де були дискваліфікації (тендер на 5+ лотів)', '{active.awarded}',
        '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Переможець торгів виграв усі лоти тендеру, де були дискваліфікації (тендер на 5+ лотів)', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-5', 30, 'RISK2-5', NULL, 0.1, NULL, TRUE, NULL,
        'Повторювана закупівля, коли замовником вже було здійснено допорогову закупівлю (тендер або звіт) з однаковим кодом предмета закупівлі (cpv), загальна сума яких дорівнює або перевищує 200 тис. грн',
        '{active.tendering,active.enquiries}', '{belowThreshold}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Повторювана закупівля, коли замовником вже було здійснено допорогову закупівлю (тендер або звіт) з однаковим кодом предмета закупівлі (cpv), загальна сума яких дорівнює або перевищує 200 тис. грн',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-5_1', 30, 'RISK2-5_1', NULL, 0.1, NULL, TRUE, NULL,
        'Повторна закупівля в одного постачальника близька до порогу, визначеного Законом (товари/послуги, на 5 % нижче ніж 200 тис. грн)',
        '{active.qualification,active.awarded}', '{belowThreshold}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Повторна закупівля в одного постачальника близька до порогу, визначеного Законом (товари/послуги, на 5 % нижче ніж 200 тис. грн)',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-5_2', 30, 'RISK2-5_2', NULL, 0.4, NULL, TRUE, NULL,
        'Непроведення конкурентних процедур закупівель під час придбання товарів та послуг', '{complete}',
        '{reporting}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Непроведення конкурентних процедур закупівель під час придбання товарів та послуг', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-5_3', 30, 'RISK2-5_3', NULL, 0.1, NULL, TRUE, NULL,
        'Повторна закупівля в одного постачальника близька до порогу, визначеного Законом (товари/послуги, на 5 % нижче ніж 200 тис. грн)',
        '{complete}', '{reporting}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Повторна закупівля в одного постачальника близька до порогу, визначеного Законом (товари/послуги, на 5 % нижче ніж 200 тис. грн)',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-6', 30, 'RISK2-6', NULL, 0.4, NULL, TRUE, NULL,
        'Непроведення конкурентних процедур закупівель під час придбання робіт', '{active.tendering,active.enquiries}',
        '{belowThreshold}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Непроведення конкурентних процедур закупівель під час придбання робіт', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-6_1', 30, 'RISK2-6_1', NULL, 0.1, NULL, TRUE, NULL,
        'Повторювана закупівля в одного постачальника близька до порогу, визначеного Законом (роботи, на 10 % нижче ніж 1,5 млн грн)',
        '{active.qualification,active.awarded}', '{belowThreshold}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Повторювана закупівля в одного постачальника близька до порогу, визначеного Законом (роботи, на 10 % нижче ніж 1,5 млн грн)',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-6_2', 30, 'RISK2-6_2', NULL, 0.1, NULL, TRUE, NULL,
        'Повторювана закупівля, коли замовником вже було здійснено допорогову закупівлю (тендер або звіт), з однаковим кодом предмета закупівлі (cpv), загальна сума яких дорівнює або перевищує 1,5 млн грн',
        '{complete}', '{reporting}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Повторювана закупівля, коли замовником вже було здійснено допорогову закупівлю (тендер або звіт), з однаковим кодом предмета закупівлі (cpv), загальна сума яких дорівнює або перевищує 1,5 млн грн',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-6_3', 30, 'RISK2-6_3', NULL, 0.1, NULL, TRUE, NULL,
        'Повторювана закупівля в одного постачальника близька до порогу, визначеного Законом (роботи, на 10 % нижче ніж 1,5 млн грн)',
        '{complete}', '{reporting}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Повторювана закупівля в одного постачальника близька до порогу, визначеного Законом (роботи, на 10 % нижче ніж 1,5 млн грн)',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-8', 30, 'RISK2-8', NULL, 0.5, NULL, FALSE, NULL,
        'Однакові контактні данні (тел.) у Учасників у відкритих торгах', '{active.qualification}',
        '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Однакові контактні данні (тел.) у Учасників у відкритих торгах', 'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-8_1', 30, 'RISK2-8_1', NULL, 0.5, NULL, FALSE, NULL,
        'Однакові контактні данні (e-mail) у Учасників у відкритих торгах', '{active.qualification}',
        '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Однакові контактні данні (e-mail) у Учасників у відкритих торгах', 'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-9', 30, 'RISK2-9', NULL, 0.3, NULL, FALSE, NULL,
        'Уникання замовником використання конкурентних процедур, шляхом використання переговорної процедури з причини «відсутності конкуренції (у тому числі з технічних причин) на відповідному ринку, внаслідок чого договір про закупівлю може бути укладено лише з одним постачальником, за відсутності при цьому альтернативи».',
        '{active}', '{negotiation,negotiation.quick}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Уникання замовником використання конкурентних процедур, шляхом використання переговорної процедури з причини «відсутності конкуренції (у тому числі з технічних причин) на відповідному ринку, внаслідок чого договір про закупівлю може бути укладено лише з одним постачальником, за відсутності при цьому альтернативи».',
        'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-10', 30, 'RISK2-10', NULL, 0.3, NULL, FALSE, NULL, 'Зміни до контракту внесені одразу після підписання',
        '{complete}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Зміни до контракту внесені одразу після підписання', 'Award', 'contract')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-11', 30, 'RISK2-11', NULL, 0.4, NULL, FALSE, NULL, 'Багаторазова зміна ціни в контракті', '{complete}',
        '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Багаторазова зміна ціни в контракті', 'Award', 'contract')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-12', 30, 'RISK2-12', NULL, 0.4, NULL, FALSE, NULL, 'Велика кількість змін у контракті', '{complete}',
        '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Велика кількість змін у контракті', 'Award', 'contract')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-13', 30, 'RISK2-13', NULL, 0.5, NULL, TRUE, NULL,
        'Замовник відхилив тендерні пропозиції всіх учасників закупівлі товарів або послуг, крім переможця',
        '{active.awarded,active.qualification}', '{aboveThresholdUA}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Замовник відхилив тендерні пропозиції всіх учасників закупівлі товарів або послуг, крім переможця', 'Award',
        'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-13-1', 30, 'RISK2-13-1', NULL, 0.5, NULL, TRUE, NULL,
        'Замовник відхилив тендерні пропозиції всіх учасників закупівлі робіт, крім переможця',
        '{active.awarded,active.qualification}', '{aboveThresholdUA}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Замовник відхилив тендерні пропозиції всіх учасників закупівлі робіт, крім переможця', 'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-14', 30, 'RISK2-14', NULL, 0.2, NULL, TRUE, NULL,
        'Під час проведення відкритих торгів із публікацією англійською мовою на закупівлю робіт відхилено більше ніж 2 тендерні пропозиції',
        '{active.pre-qualification.stand-still}', '{aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Під час проведення відкритих торгів із публікацією англійською мовою на закупівлю робіт відхилено більше ніж 2 тендерні пропозиції',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-14_1', 30, 'RISK2-14_1', NULL, 0.2, NULL, TRUE, NULL,
        'Під час проведення відкритих торгів із публікацією англійською мовою на закупівлю товарів та послуг відхилено більше ніж 2 тендерні пропозиції',
        '{active.pre-qualification.stand-still}', '{aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Під час проведення відкритих торгів із публікацією англійською мовою на закупівлю товарів та послуг відхилено більше ніж 2 тендерні пропозиції',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-15', 30, 'RISK2-15', NULL, 0.5, NULL, FALSE, NULL,
        'Учасник процедури зазначив ЄДРПОУ який йому не належить (для конкурентних процедур).',
        '{active.qualification}', '{belowThreshold,aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Учасник процедури зазначив ЄДРПОУ який йому не належить (для конкурентних процедур).', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-15_1', 30, 'RISK2-15_1', NULL, 0.5, NULL, FALSE, NULL,
        'Учасник процедури зазначив ЄДРПОУ який йому не належить (для неконкурентних процедур)',
        '{active.qualification}', '{reporting,negotiation,negotiation.quick}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Учасник процедури зазначив ЄДРПОУ який йому не належить (для неконкурентних процедур)', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-16_2', 30, 'RISK2-16_2', NULL, 0.5, NULL, FALSE, NULL,
        'Застосування переговорної процедури закупівлі під час придбання електричної енергії.', '{active}',
        '{negotiation,negotiation.quick}', '{general,authority,central,social,special}', 'Violation of national regulations',
        'Застосування переговорної процедури закупівлі під час придбання електричної енергії.', 'Award', 'tender')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';

INSERT INTO public.indicator(id, checking_frequency, code, date_checked, impact, impact_type, active,
                             last_checked_date_created, name, procedure_statuses, procedure_types,
                             procuring_entity_kind, risk, short_name, stage, tender_lot_type)
VALUES ('RISK2-17_2', 30, 'RISK2-17_2', NULL, 0.1, NULL, TRUE, NULL,
        'Учасника з найбільш економічно вигідною пропозицією замовником відхилено, а переможцем визначено учасника - фізичної особи - підприємця, з яким такий замовник попередньо укладав договори більше ніж за 3 - 5 різними групами cpv',
        '{active.qualification,active.awarded}', '{aboveThresholdUA,aboveThresholdEU}', '{general,authority,central,social,special}',
        'Violation of national regulations',
        'Учасника з найбільш економічно вигідною пропозицією замовником відхилено, а переможцем визначено учасника - фізичної особи - підприємця, з яким такий замовник попередньо укладав договори більше ніж за 3 - 5 різними групами cpv',
        'Award', 'lot')
ON CONFLICT (id) DO UPDATE SET procuring_entity_kind = '{general,authority,central,social,special}';
