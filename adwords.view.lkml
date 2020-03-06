# Google Ads configuration for Marketing Analytics by Looker

include: "//app-marketing-google-ads-adapter/*.view"
include: "//app-marketing-google-ads/*.view"
include: "//app-marketing-google-ads/*.dashboard"
include: "//app-marketing-common/pdt_base.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/adwords.view"

view: ad {
  extends: [ad_adapter]
  # Customize: Add ad fields
}

view: keyword {
  extends: [keyword_adapter]
  # Customize: Add keyword fields
}

view: ad_group {
  extends: [ad_group_adapter]
  # Customize: Add ad group fields
}

view: campaign {
  extends: [campaign_adapter]
  # Customize: Add campaign fields
}

view: customer {
  extends: [customer_adapter]
  # Customize: Add customer fields
}

view: google_ad_metrics_base {
  extends: [google_ad_metrics_base_template]
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Daily Account Aggregation
explore: ad_impressions {
  extends: [ad_impressions_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions {
  extends: [ad_impressions_template]
}

explore: ad_impressions_daily {
  extends: [ad_impressions_daily_template]
}

view: ad_impressions_daily {
  extends: [ad_impressions_daily_template]
}

# Daily Campaign Aggregation
explore: ad_impressions_campaign {
  extends: [ad_impressions_campaign_template]
}

view: ad_impressions_campaign {
  extends: [ad_impressions_campaign_template]
}

# Hourly Campaign Aggregation
explore: ad_impressions_campaign_daily {
  extends: [ad_impressions_campaign_daily_template]
}

view: ad_impressions_campaign_daily {
  extends: [ad_impressions_campaign_daily_template]
}

# Daily Ad Group Aggregation
explore: ad_impressions_ad_group {
  extends: [ad_impressions_ad_group_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_ad_group {
  extends: [ad_impressions_ad_group_template]
}

# Hourly Ad Group Aggregation
explore: ad_impressions_ad_group_hour {
  extends: [ad_impressions_ad_group_hour_template]
}

view: ad_impressions_ad_group_hour {
  extends: [ad_impressions_ad_group_hour_template]
}

# Daily Keyword Aggregation
explore: ad_impressions_keyword {
  extends: [ad_impressions_keyword_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_keyword {
  extends: [ad_impressions_keyword_template]
}

# Daily Ad Aggregation
explore: ad_impressions_ad {
  hidden:  no
  extends: [ad_impressions_ad_template]
}

view: ad_impressions_ad {
  extends: [ad_impressions_ad_template]
}

# Daily Geo Aggregation
explore: ad_impressions_geo {
  extends: [ad_impressions_geo_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_geo {
  extends: [ad_impressions_geo_template]
}

# Daily Age Range Aggregation
explore: ad_impressions_age_range {
  extends: [ad_impressions_age_range_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_age_range {
  extends: [ad_impressions_age_range_template]
}

# Daily Gender Aggregation
explore: ad_impressions_gender {
  extends: [ad_impressions_gender_template]
}

view: ad_impressions_gender {
  extends: [ad_impressions_gender_template]
}

# Daily Audience Aggregation
explore: ad_impressions_audience {
  extends: [ad_impressions_audience_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_audience {
  extends: [ad_impressions_audience_template]
}

# Daily Parental Status Aggregation
explore: ad_impressions_parental_status {
  extends: [ad_impressions_parental_status_template]
}

view: ad_impressions_parental_status {
  extends: [ad_impressions_parental_status_template]
}

# Daily Video Aggregation
explore: ad_impressions_video {
  extends: [ad_impressions_video_template]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_video {
  extends: [ad_impressions_video_template]
}

explore: adwords_period_comparison {
  extends: [period_fact]
  hidden: no
}

view: adwords_period_comparison {
  extends: [period_fact]
}
