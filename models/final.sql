{{
    config(
        materialized = 'table'
    )
}}

SELECT 
    SUM(spend)/SUM(engagements) AS Cost_per_engage,
    0 AS Conversion_cost,  -- No conversions column in the data
    SUM(impressions) AS Impressions_by_channel,
    SUM(spend)/SUM(clicks) AS CPC,
    'Twitter' AS source
FROM 
    {{ ref('src_promoted_tweets_twitter_all_data') }}

UNION ALL

SELECT 
    SUM(spend)/SUM(video_views) AS Cost_per_engage,
    SUM(spend)/SUM(conversions) AS Conversion_cost,
    SUM(impressions) AS Impressions_by_channel,
    SUM(spend)/SUM(clicks) AS CPC,
    'TikTok' AS source
FROM 
    {{ ref('src_ads_tiktok_ads_all_data') }}

UNION ALL

SELECT 
    SUM(spend)/SUM(views) AS Cost_per_engage,
    SUM(spend)/SUM(purchase) AS Conversion_cost,
    SUM(impressions) AS Impressions_by_channel,
    SUM(spend)/SUM(clicks) AS CPC,
    'Facebook' AS source
FROM 
    {{ ref('src_ads_creative_facebook_all_data') }}

UNION ALL

SELECT 
    0 AS Cost_per_engage,  -- No engagements to calculate Cost_per_engage
    SUM(spend)/SUM(conv) AS Conversion_cost,
    SUM(imps) AS Impressions_by_channel,
    SUM(spend)/SUM(clicks) AS CPC,
    'Bing' AS source
FROM 
    {{ ref('src_ads_bing_all_data') }}
