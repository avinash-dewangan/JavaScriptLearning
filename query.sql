SET SQL_SAFE_UPDATES = 0;

UPDATE pace_attributes SET SPDV_DYNAMIC_LIST_QUERY = REPLACE(SPDV_DYNAMIC_LIST_QUERY, 'PACEWF.', '') WHERE INSTR(SPDV_DYNAMIC_LIST_QUERY, 'PACEWF.') > 0;

UPDATE pace_attributes SET SPDV_DYNAMIC_LIST_QUERY = REPLACE(SPDV_DYNAMIC_LIST_QUERY, 'pacewf.', '') WHERE INSTR(SPDV_DYNAMIC_LIST_QUERY, 'pacewf.') > 0;

UPDATE `ecitizenv2`.`pace_attributes` SET `SPDV_DYNAMIC_LIST_QUERY` = 'SELECT \n    lmd.pcdi_location_id, lmd.name\nFROM\n    (SELECT \n        \'en\' lang, pcdi_location_id, pcdv_location_name_e name\n    FROM\n        PACE_LOCATION_MASTER_DATA\n    WHERE\n        pcdi_loc_type_id = 1 UNION SELECT \n        \'hi\' lang, pcdi_location_id, PCDV_LOCATION_NAME_LOCAL name\n    FROM\n        PACE_LOCATION_MASTER_DATA\n    WHERE\n        pcdi_loc_type_id = 1\n    ORDER BY NAME ASC) lmd\nWHERE\n    lang =' WHERE (`SPDI_ATTRIBUTE_ID` = '396');

UPDATE `ecitizenv2`.`pace_attributes` SET `SPDV_DYNAMIC_LIST_QUERY` = '\nSELECT \n    x.spdi_data_id,\n    CONCAT(IFNULL(y.SPDV_DATA_VALUE_LOCAL_LANG, \'\') , \'/\'\n        , IFNULL(z.SPDV_DATA_VALUE_LOCAL_LANG, \'\'))\nFROM\n    PACE_COMMON_MASTER_DATA x,\n    PACE_MASTER_DATA_LOCAL_LANG_NAME y,\n    PACE_MASTER_DATA_LOCAL_LANG_NAME z\nWHERE\n    x.spdi_master_table_id = 14\n        AND y.SPDI_DATA_ID = x.SPDI_DATA_ID\n        AND y.SPDV_LANG_CODE = \'hi\'\n        AND x.SPDI_DATA_ID = z.SPDI_DATA_ID\n        AND z.SPDV_LANG_CODE ='  WHERE (`SPDI_ATTRIBUTE_ID` = '8');


UPDATE `ecitizenv2`.`pace_attributes` SET `SPDV_DYNAMIC_LIST_QUERY` = 'SELECT \n    CONCAT(IFNULL(d.SPDV_DATA_VALUE_LOCAL_LANG, \'\'),\n            \'~\',\n            IFNULL(t.PCDI_REG_NUMBER, \'\')),\n    c.SPDV_DATA_VALUE_LOCAL_LANG\nFROM\n    PACE_CAST_MASTER t,\n    PACE_MASTER_DATA_LOCAL_LANG_NAME c,\n    PACE_MASTER_DATA_LOCAL_LANG_NAME d\nWHERE\n    c.SPDI_DATA_ID = t.PCDI_CAST_DATA_ID\n        AND d.SPDI_DATA_ID = t.PCDI_CAST_CATEGORY\n        AND d.SPDV_LANG_CODE = c.SPDV_LANG_CODE\n        AND c.SPDV_LANG_CODE =' WHERE (`SPDI_ATTRIBUTE_ID` = '116');

UPDATE `ecitizenv2`.`pace_attributes` SET `SPDV_DYNAMIC_LIST_QUERY` = 'select \n  d.pcdi_location_id, \n  d.name \nfrom \n  (\n    select \n      \'en\' lang, \n      pcdi_location_id, \n      pcdv_location_name_e name \n    from \n      PACE_LOCATION_MASTER_DATA \n    where \n      pcdi_loc_type_id = 1 \n    union \n    select \n      \'hi\' lang, \n      pcdi_location_id, \n      PCDV_LOCATION_NAME_LOCAL name \n    from \n      PACE_LOCATION_MASTER_DATA \n    where \n      pcdi_loc_type_id = 1 \n    order by \n      NAME asc\n  ) d \nwhere \n  d.lang =\n' WHERE (`SPDI_ATTRIBUTE_ID` = '31');

UPDATE `ecitizenv2`.`pace_attributes` SET `SPDV_DYNAMIC_LIST_QUERY` = '\nselect \n  CONCAT(IFNULL(d.SPDV_DATA_VALUE_LOCAL_LANG, \'\') , \'~\' , ifnull(case \n    f.SPDV_DATA_VALUE_LOCAL_LANG  when \'OBC\' then  \n    \'Other Backward Class\'\n   end, \'\') , \'~\' , IFNULL(t.PCDI_REG_NUMBER, \'\')), \n  CONCAT(IFNULL(c.SPDV_DATA_VALUE_LOCAL_LANG, \'\') , \'~\' , IFNULL(e.SPDV_DATA_VALUE_LOCAL_LANG, \'\')) \nfrom \n  PACE_CAST_MASTER t, \n  PACE_MASTER_DATA_LOCAL_LANG_NAME c, \n  PACE_MASTER_DATA_LOCAL_LANG_NAME d, \n  PACE_MASTER_DATA_LOCAL_LANG_NAME e, \n  PACE_MASTER_DATA_LOCAL_LANG_NAME f \nwhere \n  c.SPDI_DATA_ID = t.PCDI_CAST_DATA_ID \n  and d.SPDI_DATA_ID = t.PCDI_CAST_CATEGORY \n  and d.SPDV_LANG_CODE = c.SPDV_LANG_CODE \n  and t.PCDI_CAST_CATEGORY in (9) \n  and e.SPDV_LANG_CODE = f.SPDV_LANG_CODE \n  and f.SPDI_DATA_ID = t.PCDI_CAST_CATEGORY \n  and e.SPDI_DATA_ID = t.PCDI_CAST_DATA_ID \n  and c.SPDV_LANG_CODE = \'hi\' \n  and e.SPDV_LANG_CODE = \'en\' -- ' WHERE (`SPDI_ATTRIBUTE_ID` = '437');
UPDATE `ecitizenv2`.`pace_attributes` SET `SPDV_DYNAMIC_LIST_QUERY` = 'select \n  pcdi_cast_id, \n  concat(ifnull(pcdv_cast_name_in_english, \'\') , \' \' , ifnull(pcdi_reg_number, \'\') , \' { \' , ifnull(m.spdv_data_value, \'\') , \'}\') \nfrom \n  PACE_CAST_MASTER t, \n  PACE_COMMON_MASTER_DATA m' WHERE (`SPDI_ATTRIBUTE_ID` = '1130');