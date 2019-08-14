# Google Ads configuration for Marketing Analytics by Looker

include: "//app-marketing-google-ads-adapter/*.view"
include: "//app-marketing-google-ads/*.view"
include: "//app-marketing-google-ads/*.dashboard"
include: "//app-marketing-common/pdt_base.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/adwords_config.view"

view: ad {
  extends: [ad_config]
  # Customize: Add ad fields
}

view: keyword {
  extends: [keyword_config]
  # Customize: Add keyword fields
}

view: ad_group {
  extends: [ad_group_config]
  # Customize: Add ad group fields
}

view: campaign {
  extends: [campaign_config]
  # Customize: Add campaign fields
}

view: customer {
  extends: [customer_config]
  # Customize: Add customer fields
}

view: google_ad_metrics_base {
  extends: [google_ad_metrics_base_config]
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Daily Account Aggregation
explore: ad_impressions {
  extends: [ad_impressions_config]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions {
  extends: [ad_impressions_config]
}

# Hourly Account Aggregation
explore: ad_impressions_hour {
  extends: [ad_impressions_hour_config]
}

view: ad_impressions_hour {
  extends: [ad_impressions_hour_config]
}

# Daily Campaign Aggregation
explore: ad_impressions_campaign {
  extends: [ad_impressions_campaign_config]
}

view: ad_impressions_campaign {
  extends: [ad_impressions_campaign_config]
}

# Hourly Campaign Aggregation
explore: ad_impressions_campaign_hour {
  extends: [ad_impressions_campaign_hour_config]
}

view: ad_impressions_campaign_hour {
  extends: [ad_impressions_campaign_hour_config]
}

# Daily Ad Group Aggregation
explore: ad_impressions_ad_group {
  extends: [ad_impressions_ad_group_config]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_ad_group {
  extends: [ad_impressions_ad_group_config]
}

# Hourly Ad Group Aggregation
explore: ad_impressions_ad_group_hour {
  extends: [ad_impressions_ad_group_hour_config]
}

view: ad_impressions_ad_group_hour {
  extends: [ad_impressions_ad_group_hour_config]
}

# Daily Keyword Aggregation
explore: ad_impressions_keyword {
  extends: [ad_impressions_keyword_config]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_keyword {
  extends: [ad_impressions_keyword_config]
}

# Daily Ad Aggregation
explore: ad_impressions_ad {
  hidden:  no
  extends: [ad_impressions_ad_config]
}

view: ad_impressions_ad {
  extends: [ad_impressions_ad_config]
}

# Daily Geo Aggregation
explore: ad_impressions_geo {
  extends: [ad_impressions_geo_config]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_geo {
  extends: [ad_impressions_geo_config]
}

# Daily Age Range Aggregation
explore: ad_impressions_age_range {
  extends: [ad_impressions_age_range_config]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_age_range {
  extends: [ad_impressions_age_range_config]
}

# Daily Gender Aggregation
explore: ad_impressions_gender {
  extends: [ad_impressions_gender_config]
}

view: ad_impressions_gender {
  extends: [ad_impressions_gender_config]
}

# Daily Audience Aggregation
explore: ad_impressions_audience {
  extends: [ad_impressions_audience_config]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_audience {
  extends: [ad_impressions_audience_config]
}

# Daily Parental Status Aggregation
explore: ad_impressions_parental_status {
  extends: [ad_impressions_parental_status_config]
}

view: ad_impressions_parental_status {
  extends: [ad_impressions_parental_status_config]
}

# Daily Video Aggregation
explore: ad_impressions_video {
  extends: [ad_impressions_video_config]
  hidden: no     #TODO change hidden:no to hidden:yes if you don't want to expose this Explore
}

view: ad_impressions_video {
  extends: [ad_impressions_video_config]
}

explore: adwords_period_comparison {
  extends: [period_fact]
  hidden: no
}

view: adwords_period_comparison {
  extends: [period_fact]
}
