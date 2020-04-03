project_name: "app-marketing"

application: digital-marketing-analytics {
  label: "Digital Marketing"
  definition_file: "application.json"
  config_project: "@{CONFIG_PROJECT_NAME}"
}

################ Constants ################

constant: CONNECTION_NAME {
  value: "looker_app"
  export: override_required
}

constant: ADWORDS_SCHEMA_NAME {
  value: "google_ads"
  export: override_optional # marking these as optional since customer likely has some subset of mktg sources
}

constant: BING_ADS_SCHEMA_NAME {
  value: "bings_ads_for_looker"
  export: override_optional
}

constant: FACEBOOK_ADS_SCHEMA_NAME {
  value: "facebook_ads_for_looker"
  export: override_optional
}

constant: LINKEDIN_ADS_SCHEMA_NAME {
  value: "linkedin_ads"
  export: override_optional
}

constant: PINTEREST_ADS_SCHEMA_NAME {
  value: "pinterest_ads"
  export: override_optional
}

constant: CONFIG_PROJECT_NAME {
  value: "app-marketing-config"
  export: override_required
}

################ Dependencies ################

# Includes accessory files like report descriptions, the application.json file, and artwork for the app
local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: ADWORDS_SCHEMA_NAME {
    value: "@{ADWORDS_SCHEMA_NAME}"
  }

  override_constant: BING_ADS_SCHEMA_NAME {
    value: "@{BING_ADS_SCHEMA_NAME}"
  }

  override_constant: FACEBOOK_ADS_SCHEMA_NAME {
    value: "@{FACEBOOK_ADS_SCHEMA_NAME}"
  }

  override_constant: LINKEDIN_ADS_SCHEMA_NAME {
    value: "@{LINKEDIN_ADS_SCHEMA_NAME}"
  }

  override_constant: PINTEREST_ADS_SCHEMA_NAME {
    value: "@{PINTEREST_ADS_SCHEMA_NAME}"
  }
}

# Library of common ad metrics definitions and date periods
remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-bigquery"
  ref: "fc52c06885fdfed63b74f9803a3cda01450871f9"
}

# TODO: Only include remote dependencies for data sources and ETLs as applicable

# LookML to map the ETL and data warehouse for Google Ads
remote_dependency: app-marketing-google-ads-adapter {
  url: "git://github.com/looker/app-marketing-google-ads-fivetran-bigquery"
  ref: "9d03ac068dd377cfe12224f843c9d3f699209db7"
}

# LookML to map the ETL and data warehouse for Facebook Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-bigquery"
  ref: "2d5530473840c9c52056c83871b0149b716fd0f3"
}

# LookML to map the ETL and data warehouse for LinkedIn Ads
remote_dependency: app-marketing-linkedin-ads-adapter {
  url: "git://github.com/looker/app-marketing-linkedin-ads-fivetran-bigquery"
  ref: "a888ada8bb4f2a74e8218a7b9731777ce480ebee"
}

# LookML to map the ETL and data warehouse for Bing Ads
remote_dependency: app-marketing-bing-ads-adapter {
  url: "git://github.com/looker/app-marketing-bing-ads-fivetran-bigquery"
  ref: "c3e4b40dc43e95dc0bb9358eb8361d7647d210bf"
}

# # LookML for analysis and content for Pinterest Ads
remote_dependency: app-marketing-pinterest-ads-adapter {
  url: "git://github.com/looker/app-marketing-pinterest-ads-fivetran-bigquery"
  ref: "d54beb03fb06ee196c46ef34ea49628b6af4137c"
}


#LookML for analysis and content for Google Ads
remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "5e12c5c554c59a389f2730bb3b8e1843713fa87b"
}

# LookML for analysis and content for Facebook Ads
remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "8abee567d93a52e9bae12f5e02f95d69c1c12b51"
}

# LookML for analysis and content for LinkedIn Ads
remote_dependency: app-marketing-linkedin-ads {
  url: "git://github.com/looker/app-marketing-linkedin-ads"
  ref: "7bf45f6b33efc75fc3d84cff1ace89b16fc5990b"
}

# LookML for analysis and content for Bing Ads
remote_dependency: app-marketing-bing-ads {
  url: "git://github.com/looker/app-marketing-bing-ads"
  ref: "1d7fc8c2303a5e5cef403e816cfdd216f5c2d9e7"
}

# LookML for analysis and content for Pinterest Ads
remote_dependency: app-marketing-pinterest-ads {
  url: "git://github.com/looker/app-marketing-pinterest-ads"
  ref: "a4c18ce343b5502bec3e22aac876b3b966d2b164"
}

# LookML for analysis and content for cross channel reporting
remote_dependency: app-marketing-crosschannel {
  url: "git://github.com/looker/app-marketing-crosschannel"
  ref: "19f564a72b0884dc694c5dbc7d3c8e220c1331dd"
}
