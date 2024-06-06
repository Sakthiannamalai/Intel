PUT file://C:/Users/sakthiannamali.s/Downloads/LOCATION.csv @BUILD_SIM_BOM."MASTER_DATA".STAGE_LOCATION;

CREATE OR REPLACE FILE FORMAT FORMATE
TYPE = 'CSV'
FIELD_OPTIONALLY_ENCLOSED_BY='"'
SKIP_HEADER = 1;

COPY INTO BUILD_SIM_BOM."MASTER_DATA".LOCATION 
FROM @BUILD_SIM_BOM."MASTER_DATA".STAGE_LOCATION/LOCATION.csv
FILE_FORMAT = (FORMAT_NAME = 'FORMATE', TYPE = CSV);