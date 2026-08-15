-- ============================================================================
-- 11_TASK_PIPELINE.SQL — Task DAG for Wind Power Forecasting
-- ============================================================================
USE DATABASE WIND_ANALYTICS;
USE SCHEMA APP;

CREATE OR REPLACE TASK APP.TASK_INGEST
  WAREHOUSE = WIND_WH
  SCHEDULE = 'USING CRON 0 */2 * * * UTC'
  COMMENT = 'Ingest latest operational data'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_DETECT
  WAREHOUSE = WIND_WH
  AFTER APP.TASK_INGEST
  COMMENT = 'Run anomaly detection'
AS
  SELECT 1; -- Replace with actual refresh logic

CREATE OR REPLACE TASK APP.TASK_FORECAST
  WAREHOUSE = WIND_WH
  AFTER APP.TASK_DETECT
  COMMENT = 'Run ML.FORECAST'
AS
  SELECT 1; -- Replace with actual refresh logic

ALTER TASK APP.TASK_FORECAST RESUME;
ALTER TASK APP.TASK_DETECT RESUME;
ALTER TASK APP.TASK_INGEST RESUME;
