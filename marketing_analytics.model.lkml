# TODO: Update connection
connection: "@{CONNECTION_NAME}"

# TODO: Update schemas and add each module for cross channel reporting
datagroup: ama_etl_datagroup {
  sql_trigger: SELECT COUNT(*) FROM `facebook_ads_fivetran.ads_insights`, `google_ads.account_hourly_stats` ;;
  max_cache_age: "24 hours"
}

include: "//app-marketing-common/*.view"

# TODO: Add each relevant module
include: "ad_metrics_base.view"
include: "adwords.view"
include: "facebook_ads.view"
include: "linkedin_ads.view"
include: "bing_ads.view"
include: "cross_channel_ad_impressions.view"
