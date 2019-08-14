include: "//app-marketing-crosschannel/*.view"
include: "//app-marketing-crosschannel/*.dashboard"
include: "//@{CONFIG_PROJECT_NAME}/cross_channel_ad_impressions_config.view.lkml"

view: cross_channel_ad_impressions_dt {
  extends: [cross_channel_ad_impressions_dt_config]
}
