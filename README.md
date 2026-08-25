# Wind Power Forecasting

Wind Power Forecasting for Vietnam - ML.FORECAST and Dynamic Tables power real-time wind power optimization intelligence for renewable energy in Bac Lieu & Tra Vinh.

## Architecture

Vietnam renewable energy faces increasing complexity in wind power optimization. Decision-makers in Bac Lieu & Tra Vinh need real-time intelligence and ML-powered recommendations.

```mermaid
flowchart LR
    S3[S3 Data Landing] --> SP[Snowpipe]
    SPS --> RAW
    RAW --> DT[Dynamic Tables]
    DT --> ML[ML Functions]
    DT --> SEARCH[Cortex Search]
    DT --> SV[Semantic View]
    SV --> AGENT[Cortex Agent]
    SEARCH --> AGENT
    DT --> APP[React App SPCS]
    SM[SageMaker] --> DT
    BR[Bedrock] --> APP
    DT --> QS[QuickSight + Q]
```

## Snowflake Capabilities

| Capability | Implementation |
|-----------|---------------|
| Dynamic Tables | PERFORMANCE_DASHBOARD / TREND_ANALYTICS / FORECAST_INPUT / OPERATIONAL_RISK |
| ML Functions | ML.FORECAST + ML.ANOMALY_DETECTION |
| Cortex AI | COMPLETE, SUMMARIZE, AI_CLASSIFY |
| Cortex Search | 100 documents indexed |
| Cortex Agent | WIND_ANALYTICS_AGENT |
| Semantic View | WIND_ANALYTICS_ANALYTICS |
| React App (SPCS) | 5 tabs + DemoGuide |


## AWS Services

| Service | Role in Demo |
|---------|-------------|
| AWS IoT Core | Ingest real-time data from renewable energy systems |
| Amazon SageMaker | Wind Power Optimization ML models |
| AWS Glue | ETL and data transformation |
| Apache Iceberg (S3) | Open table format for data sharing |
| Amazon Bedrock (Claude) | Generate wind power optimization recommendations |
| Amazon QuickSight + Q | Wind Power Optimization dashboard with NL queries |


## Personas

| Persona | Role | Key Questions |
|---------|------|---------------|
| **Pham Quoc Hung** | VP Wind Operations | "What are the key wind power optimization metrics?" "Which areas need attention?" |
| **Vu Thi Hien** | Forecasting Analyst | "Show me the trend analysis." "Which operations are underperforming?" |


## Data

| Table | Rows | Description |
|-------|------|-------------|
| OPERATIONS | 100,000 | Core operational records for wind power optimization |
| METRICS | 500,000 | Time-series performance metrics |
| ASSETS | 5,000 | Asset and entity master data |
| EVENTS | 200,000 | Operational events and incidents |
| DOCUMENTS | 100 | SOPs, reports, and compliance docs |


## Build Instructions

### Prerequisites
- Snowflake account with ACCOUNTADMIN access
- Cortex AI enabled (ML Functions, Search, Agent)
- Warehouse: WIND_WH (Medium)
- AWS CLI with access (us-west-2)

### Deployment

```bash
snowsql -f snowflake/00_setup.sql
snowsql -f snowflake/01_marketplace_install.sql
snowsql -f snowflake/02_raw_tables.sql
snowsql -f snowflake/03_staging.sql
snowsql -f snowflake/04_dynamic_tables.sql
snowsql -f snowflake/05_search.sql
snowsql -f snowflake/06_ml_models.sql
snowsql -f snowflake/07_semantic_view.sql
snowsql -f snowflake/08_agent.sql
```

### React App (SPCS)
```bash
cd app && npm ci && npm run build
docker build -t aws-vietnam-renewable-wind-app .
docker push bdiqc8sm-default.registry.snowflakecomputing.com/wind_analytics/app/aws_vietnam_renewable_wind/app:latest
```

### Demo Mode
Open the app URL with `?demo=true` for presenter view.

## Build Modes

### Snowflake Only
Run scripts 00-08 (skip AWS-specific integration). Uses:
- **Snowpipe Streaming SDK** instead of AWS IoT Core
- **ML.FORECAST + ML.ANOMALY_DETECTION** instead of Amazon SageMaker
- **Dynamic Tables** instead of AWS Glue
- **Snowflake-managed Iceberg Tables** instead of Apache Iceberg (S3)
- **Cortex Complete** instead of Amazon Bedrock (Claude)
- **Snowflake Intelligence (Cortex Analyst)** instead of Amazon QuickSight + Q

### Full AWS + Snowflake
Run all scripts including AWS integration. Deploy QuickSight dashboard from `quicksight/`.

## Business Impact

Industry research and Snowflake customer outcomes:
- **Vietnam has 5.2GW installed wind capacity with 21GW offshore wind potential in southern waters** — [GWEC Global Wind Report](https://www.gwec.net/)
- **PDP8 targets 6GW offshore wind by 2030 — $30B+ investment pipeline attracting Orsted, Equinor, and Mainstream** — [MOIT Vietnam PDP8](https://moit.gov.vn/en)
- **Vietnam's offshore wind capacity factor is 45-55% — among highest in Asia due to strong monsoon winds** — [World Bank ESMAP](https://www.esmap.org/offshore-wind)
- **Orsted manages 15GW of offshore wind assets globally using real-time data analytics platforms** — [Orsted Annual Report](https://orsted.com/en/investors/ir-material/annual-report-2024)
- **Uniper** (Snowflake customer): built a real-time energy trading and grid analytics platform on Snowflake managing 40GW of generation capacity -- [snowflake.com/customers/uniper](https://www.snowflake.com/en/customers/all-customers/case-study/uniper/)

## Key Demo Numbers

- **100K operations** tracked in Bac Lieu & Tra Vinh
- **500K metrics** time-series data points
- **5K assets** monitored
- **100 docs** searchable


## License

Apache 2.0 — See [LICENSE](LICENSE) for details.

This is a personal demo project and is not an official Snowflake offering. It comes with no support or warranty.