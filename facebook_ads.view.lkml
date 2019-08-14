include: "//app-marketing-facebook-ads-adapter/*.view"
include: "//app-marketing-facebook-ads/*.view"
include: "//app-marketing-facebook-ads/*.dashboard"
include: "//app-marketing-common/pdt_base.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/facebook_ads_config.view"

view: fb_adcreative {
  extends: [fb_adcreative_config]
  # Customize: Add adcreative fields
}

view: fb_ad {
  extends: [fb_ad_config]
  # Customize: Add ad fields
}

view: fb_adset {
  extends: [fb_adset_config]
  # Customize: Add ad group fields
}

view: fb_campaign {
  extends: [fb_campaign_config]
  # Customize: Add campaign fields
}

view: fb_account {
  extends: [fb_account_config]
  # Customize: Add customer fields
}

view: fb_ad_metrics_base {
  extends: [fb_ad_metrics_base_config]
  # Customize: Add metrics or customize drills / labels / descriptions
}

# Ad Creative Aggregation
explore: fb_ad_impressions {
  extends: [fb_ad_impressions_config]
}

view: fb_ad_impressions {
  extends: [fb_ad_impressions_config]
}

# Hourly Age and Gender Aggregation
explore: fb_ad_impressions_age_and_gender {
  extends: [fb_ad_impressions_age_and_gender_config]
}

view: fb_ad_impressions_age_and_gender {
  extends: [fb_ad_impressions_age_and_gender_config]
}

# Hourly Geo Aggregation
explore: fb_ad_impressions_geo {
  extends: [fb_ad_impressions_geo_config]
}

view: fb_ad_impressions_geo {
  extends: [fb_ad_impressions_geo_config]
}

# Hourly Platform and Device Aggregation
explore: fb_ad_impressions_platform_and_device {
  extends: [fb_ad_impressions_platform_and_device_config]
}

view: fb_ad_impressions_platform_and_device {
  extends: [fb_ad_impressions_platform_and_device_config]
}

explore: fb_period_comparison {
  extends: [fb_period_comparison_config]
  hidden: no
}

view: fb_period_comparison {
  extends: [fb_period_comparison_config]
}
