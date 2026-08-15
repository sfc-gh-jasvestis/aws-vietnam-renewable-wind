-- ============================================================================
-- 08_AGENT.SQL — Cortex Agent for Wind Power Forecasting
-- ============================================================================
USE DATABASE WIND_ANALYTICS;
USE SCHEMA APP;

CREATE OR REPLACE CORTEX AGENT APP.WIND_ANALYTICS_AGENT
  COMMENT = 'Wind Power Forecasting AI Assistant'
  MODEL = 'claude-opus-4-8'
  TOOLS = (
    SEMANTIC_VIEW_TOOL(SEMANTIC_VIEW => 'WIND_ANALYTICS.APP.WIND_ANALYTICS_ANALYTICS'),    CORTEX_SEARCH_TOOL(CORTEX_SEARCH_SERVICE => 'WIND_ANALYTICS.SEARCH.WIND_ANALYTICS_SEARCH', TOOL_DESCRIPTION => 'Search documents for Renewable Energy information')
  )
  SYSTEM_PROMPT = 'You are the Wind Power Optimization Agent for Vietnamese renewable energy operations in Bac Lieu & Tra Vinh.';
