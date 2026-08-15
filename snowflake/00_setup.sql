-- ============================================================================
-- Wind Power Forecasting
-- Wind Power Forecasting for Vietnam - ML.FORECAST and Dynamic Tables power real-time wind power optimization intelligence for renewable energy in Bac Lieu & Tra Vinh.
-- ============================================================================
USE ROLE ACCOUNTADMIN;
CREATE DATABASE IF NOT EXISTS WIND_ANALYTICS;
CREATE WAREHOUSE IF NOT EXISTS WIND_WH WAREHOUSE_SIZE = 'MEDIUM' AUTO_SUSPEND = 120 AUTO_RESUME = TRUE;
USE DATABASE WIND_ANALYTICS;
CREATE SCHEMA IF NOT EXISTS RAW;
CREATE SCHEMA IF NOT EXISTS CURATED;
CREATE SCHEMA IF NOT EXISTS ML;
CREATE SCHEMA IF NOT EXISTS AI;
CREATE SCHEMA IF NOT EXISTS SEARCH;
CREATE SCHEMA IF NOT EXISTS APP;

USE WAREHOUSE WIND_WH;
