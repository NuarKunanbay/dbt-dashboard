Task
We use map data from various ad platforms into a single one. it can help marketers with questions like: "Where clicks better on facebook or tiktok?"
Imagine that model behind dashboard, is lost somehow. You need to rebuilt it. You have: — raw data from the ad systems (seeds folder), - the MCDM table structure for this report, - and dashboard

In this situation, we've got checklist that you can follow (or not): - Begin a new project in dbt Cloud, utilizing Google Big Query as the DWH. - Use the raw data from the ad platforms and the MCDM table structure for the ads_basic_performance report.

I have transformed the data using DBT Cloud and BigQuery DWH and recreated table report using google looker studio.
Dashboard: https://lookerstudio.google.com/s/jUxV2KMA2BU
If you want to make changes in the dataset (i.e adding columns into the dataset) you should refer to the models/final.sql and adjust the operations there.
