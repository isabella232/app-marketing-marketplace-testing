include: "//app-marketing-bing-ads-adapter/*.view"
include: "//app-marketing-bing-ads/*.view"
include: "//app-marketing-bing-ads/*.dashboard"
include: "//@{CONFIG_PROJECT_NAME}/bing_ads_config.view"

view: bing_ad_metrics_base {
  extends: [bing_ad_metrics_base_config]
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Daily Account Aggregation
explore: bing_ad_impressions {
  extends: [bing_ad_impressions_config]
}

view: bing_ad_impressions {
  extends: [bing_ad_impressions_config]
}

# Daily Campaign Aggregation
explore: bing_ad_impressions_campaign {
  extends: [bing_ad_impressions_campaign_config]
}

view: bing_ad_impressions_campaign {
  extends: [bing_ad_impressions_campaign_config]
}

# Daily Ad Group Aggregation
explore: bing_ad_impressions_ad_group {
  extends: [bing_ad_impressions_ad_group_config]
}

view: bing_ad_impressions_ad_group {
  extends: [bing_ad_impressions_ad_group_config]
}

# Daily Keyword Aggregation
explore: bing_ad_impressions_keyword {
  extends: [bing_ad_impressions_keyword_config]
}

view: bing_ad_impressions_keyword {
  extends: [bing_ad_impressions_keyword_config]
}

# Daily Ad Aggregation
explore: bing_ad_impressions_ad {
  extends: [bing_ad_impressions_ad_config]
}

view: bing_ad_impressions_ad {
  extends: [bing_ad_impressions_ad_config]
}

explore: bing_period_comparison {
  extends: [bing_period_comparison_config]
  hidden: no
}

view: bing_period_comparison {
  extends: [bing_period_comparison_config]
}
