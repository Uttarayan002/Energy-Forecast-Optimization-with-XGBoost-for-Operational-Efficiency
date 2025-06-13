CREATE TABLE ccpp_data (
    AT FLOAT, --atmos. temperature
    V FLOAT,  --Exhaust vaccum
    AP FLOAT,  --Ambient pressure
    RH FLOAT,  --Relative humidity
    PE FLOAT  --Energy
);
SELECT * FROM ccpp_data;
drop table power_plant_data;
COPY ccpp_data (AT, V, AP, RH, PE)
FROM 'E:/Projects/Environmental-Insights-and-Power-Output-Forecasting-with-XGBoost/data/CCPP_Datasets.csv'
DELIMITER ','
CSV HEADER;

--Retrieval top 10 
SELECT * FROM ccpp_data limit 10;

--Identifying Missing Data
SELECT 
    COUNT(*) AS total_rows,
    SUM(CASE WHEN "at" IS NULL THEN 1 ELSE 0 END) AS missing_column1,
    SUM(CASE WHEN "v" IS NULL THEN 1 ELSE 0 END) AS missing_column2,
    SUM(CASE WHEN "rh" IS NULL THEN 1 ELSE 0 END) AS missing_column3,
	SUM(CASE WHEN "ap" IS NULL THEN 1 ELSE 0 END) AS missing_column4,
	SUM(CASE WHEN "pe" IS NULL THEN 1 ELSE 0 END) AS missing_column5
FROM ccpp_data;

SELECT COUNT(*) 
FROM ccpp_data 
WHERE pe IS NULL;





--Descriptive Statistics
SELECT CAST(AVG(pe) AS DECIMAL(10, 2)) AS avg_energy_generating FROM ccpp_data; 

SELECT AT, PE FROM ccpp_DATA ORDER BY AT DESC;
SELECT AT, PE FROM ccpp_DATA ORDER BY AT ASC;

-- Business Queries
SELECT AT, PE FROM power_plant_data
WHERE AT > 30; --What will be the energy outputs when ambient temperature is very high

SELECT rh, ap FROM 
	ccpp_DATA WHERE RH >80 AND AP <1000; --records for specific combinations of high RH and low AP:

 -- Feature Correlation 
SELECT
  AVG(AT) AS avg_temp,
  AVG(V) AS avg_vacuum,
  AVG(AP) AS avg_pressure,
  AVG(RH) AS avg_humidity,
  AVG(PE) AS avg_output
FROM power_plant_data; 

SELECT
  FLOOR(AT) AS temp_range,
  AVG(PE) AS avg_output
FROM ccpp_data
GROUP BY FLOOR(AT)
ORDER BY temp_range; --temp ranges









