# Wind Power Forecasting

**Vietnam - Renewable Energy**
Use case: Wind Power Optimization

> Wind Power Forecasting for Vietnam - ML.FORECAST and Dynamic Tables power real-time wind power optimization intelligence for renewable energy in Bac Lieu & Tra Vinh.

## Why Snowflake

Snowflake delivers wind power optimization intelligence for Vietnamese renewable energy - Dynamic Tables maintain real-time dashboards, ML.FORECAST projects key metrics, and Cortex AI generates recommendations

- **ML.FORECAST for wind power optimization** - Only demo for Vietnamese renewable energy
- **ML.ANOMALY_DETECTION early warning** - Detects deviations before impact
- **AI recommendations** - Cortex AI actionable guidance
- **Vietnamese context** - Local names, VND economics

## What is deployed

| | |
|---|---|
| Database | `VIETNAM_RENEWABLE_WIND` |
| Service | `VIETNAM_RENEWABLE_WIND_APP` |
| Compute pool | `SEA_DEMOS_VIETNAM_POOL` |
| Dimension table | `RAW.WIND_FARMS` (20 rows) |
| Fact table | `RAW.TURBINE_READINGS` (250,000 rows, 90 days) |
| Curated layer | `CURATED.PERFORMANCE_SUMMARY`, `CURATED.TREND_ANALYSIS`, `CURATED.KPI_SUMMARY` |
| Currency | VND (₫) |

Regions in play: Ho Chi Minh City, Hanoi, Binh Duong, Dong Nai, Can Tho
Segments: Onshore Ridge, Onshore Coastal, Nearshore, Offshore

Dynamic tables are created suspended and refreshed on demand:

```bash
./refresh_demo_data.sh VIETNAM_RENEWABLE_WIND
```

## KPI cards

Every card below is served live from `CURATED.KPI_SUMMARY`. The app keeps the
original literal as a fallback, so it still renders if Snowflake is unreachable.

| Card | Value | Backed by |
|---|---|---|
| Wind Generation | `1.2 TWh` | average per event |
| Availability | `96.8%` | average per event |
| Capacity Factor | `32%` | total across Wind Farms |
| Turbines Active | `247` | total across Wind Farms |
| Avg Wind Speed | `7.2 m/s` | average per event |
| Wake Loss | `8%` | total across Wind Farms |
| Pitch Faults (MTD) | `4` | total across Wind Farms |


## Demo flow

1. Overview
2. Analytics
3. AI Intelligence
4. Ask AI
5. Architecture

## Talking points

- **100K operations** - tracked in Bac Lieu & Tra Vinh
- **500K metrics** - time-series data points
- **5K assets** - monitored
- **100 docs** - searchable

## Business impact

- Vietnam renewable energy sector growing rapidly (GSO Vietnam)
- AI improves outcomes 15-30% (McKinsey)
- Vietnam FDI strong in this sector (MPI)
- Real-time analytics reduces response 60-80% (Gartner)

---
Generated from `generator/demo_specs/aws-vietnam-renewable-wind.json`. Do not hand-edit: run
`python3 generator/gen_repo_docs.py aws-vietnam-renewable-wind` instead.
