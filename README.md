# Ad Platform Aggregator Dashboard

Welcome to the repository for the Ad Platform Aggregator Dashboard. This project integrates advertising data from multiple platforms, such as Facebook and TikTok, into a single dashboard, helping marketers analyze and compare advertising performance across different channels.

## Project Overview

The dashboard addresses key marketing questions, such as determining which platform generates more clicks. It utilizes data from various advertising systems to present a unified view of performance metrics.

### Lost Model Scenario

In case the underlying model for the dashboard is lost, this repository also includes a comprehensive strategy for rebuilding the model using:

- Raw data from advertising platforms (located in the `seeds` folder).
- The Multi-Criteria Decision-Making (MCDM) table structure for the `ads_basic_performance` report.
- The dashboard itself, which can be accessed [here](https://lookerstudio.google.com/s/jUxV2KMA2BU).

### Project Setup

To rebuild the model in the event of data loss or migration, follow these steps:

1. **Start a New Project in dbt Cloud:** Utilize Google BigQuery as the Data Warehouse (DWH).
2. **Data Transformation:** Use dbt Cloud to transform the raw data from the advertising platforms.
3. **Dashboard Creation:** Use Google Looker Studio to recreate the dashboard for the `ads_basic_performance` report.

### Making Changes

To make changes to the dataset, such as adding columns:
- Refer to `models/final.sql` in this repository and adjust the SQL operations accordingly to update the transformations.

## Repository Structure

- `seeds/` - Contains the raw data files from various ad platforms.
- `models/` - SQL scripts for data transformation and report generation.
- `dashboards/` - Link to the Looker Studio dashboard.

## Contribution

Contributions to improve the dashboard or extend its functionality are welcome. Please refer to the issues tab to find areas where you can contribute.

---

Feel free to customize the wording further based on your specific needs or personal preferences!
