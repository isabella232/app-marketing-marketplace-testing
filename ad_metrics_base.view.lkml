include: "//app-marketing-common/*.view"
include: "//@{CONFIG_PROJECT_NAME}/ad_metrics_base_config.view"

# Customize measure definitions in this view. Changes will be reflected across all projects.
view: ad_metrics_base {
  extends: [ad_metrics_base_config]
}
