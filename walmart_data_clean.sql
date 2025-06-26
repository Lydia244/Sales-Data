CREATE TABLE walmart_sales_clean AS
WITH deduped AS (
  SELECT DISTINCT
    TRIM(store)        AS store_id,
    TRIM(dept)         AS dept_id,
    TRIM(date)         AS date_str,
    TRIM(weekly_sales) AS weekly_sales_str,
    TRIM(is_holiday)   AS is_holiday_str,
    TRIM(temperature)  AS temperature_str,
    TRIM(fuel_price)   AS fuel_price_str,
    TRIM(cpi)          AS cpi_str,
    TRIM(unemployment) AS unemployment_str
  FROM walmart_sales_raw
),
typed AS (
  SELECT
    CAST(store_id AS INT)                                            AS store,
    CAST(dept_id AS INT)                                             AS dept,
    TO_DATE(date_str, 'YYYY-MM-DD')                                  AS sale_date,
    CAST(NULLIF(weekly_sales_str, '') AS NUMERIC(12,2))              AS weekly_sales,
    CASE
      WHEN UPPER(is_holiday_str) IN ('TRUE','T','1','Y') THEN TRUE
      ELSE FALSE
    END                                                              AS is_holiday,
    CAST(NULLIF(temperature_str, '') AS NUMERIC)                     AS temperature,
    CAST(NULLIF(fuel_price_str, '') AS NUMERIC)                      AS fuel_price,
    CAST(NULLIF(cpi_str, '') AS NUMERIC)                             AS cpi,
    CAST(NULLIF(unemployment_str, '') AS NUMERIC)                    AS unemployment
  FROM deduped
)
SELECT
  *
FROM typed
WHERE
  weekly_sales IS NOT NULL
  AND weekly_sales >= 0
  AND sale_date BETWEEN '2010-01-01' AND '2012-12-31';
