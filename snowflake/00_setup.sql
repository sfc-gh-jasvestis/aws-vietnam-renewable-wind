-- Generated from generator/demo_specs/aws-vietnam-renewable-wind.json
-- Regenerate with: python3 generator/gen_repo_docs.py aws-vietnam-renewable-wind
-- This is the schema that is actually deployed for VIETNAM_RENEWABLE_WIND.

-- VIETNAM_RENEWABLE_WIND  (Wind Power Forecasting)
-- generated from generator/demo_specs/aws-vietnam-renewable-wind.json - do not hand-edit
CREATE DATABASE IF NOT EXISTS VIETNAM_RENEWABLE_WIND;
CREATE SCHEMA IF NOT EXISTS VIETNAM_RENEWABLE_WIND.RAW;
CREATE SCHEMA IF NOT EXISTS VIETNAM_RENEWABLE_WIND.CURATED;
CREATE SCHEMA IF NOT EXISTS VIETNAM_RENEWABLE_WIND.APP;
USE DATABASE VIETNAM_RENEWABLE_WIND;

-- 5 real regions; entity names carry their region so the two always agree
