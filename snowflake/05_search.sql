-- ============================================================================
-- 05_SEARCH.SQL — Cortex Search for Wind Power Forecasting
-- ============================================================================
USE DATABASE WIND_ANALYTICS;
USE SCHEMA SEARCH;

CREATE OR REPLACE CORTEX SEARCH SERVICE SEARCH.WIND_ANALYTICS_SEARCH
  ON CONTENT
  ATTRIBUTES DOC_TYPE, CATEGORY
  WAREHOUSE = WIND_WH
  TARGET_LAG = '1 hour'
AS (
  SELECT * FROM RAW.DOCUMENTS
);
