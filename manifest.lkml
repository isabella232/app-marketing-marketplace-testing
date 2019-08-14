project_name: "app-marketing"

application: digital-marketing {
  label: "Digital Marketing (MP Ready)"
  definition_file: "application.json"
}

################ Constants ################

constant: CONNECTION_NAME {
  value: "looker_application"
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
  ref: "66bd8b41ff601d90bd39d3f0522128a56b40c2e4"
}

# LookML to map the ETL and data warehouse for Facebook Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-bigquery"
  ref: "e965dfa4075f016aeac71df9aa686f4ee6249a93"
}

# LookML to map the ETL and data warehouse for LinkedIn Ads
remote_dependency: app-marketing-linkedin-ads-adapter {
  url: "git://github.com/looker/app-marketing-linkedin-ads-fivetran-bigquery"
  ref: "10d08ba9c79b8ae136142e57187e20aa74d4a30b"
}

# LookML to map the ETL and data warehouse for Bing Ads
remote_dependency: app-marketing-bing-ads-adapter {
  url: "git://github.com/looker/app-marketing-bing-ads-fivetran-bigquery"
  ref: "c3e4b40dc43e95dc0bb9358eb8361d7647d210bf"
}

#LookML for analysis and content for Google Ads
remote_dependency: app-marketing-google-ads {
  url: "git://github.com/looker/app-marketing-google-ads"
  ref: "54d64ffcdd98a365e8f9bc64ac298e1ac88cc6de"
}

# LookML for analysis and content for Facebook Ads
remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "4f9d5e46d3eaef90f43db4937a7d2b1fee33db9e"
}

# LookML for analysis and content for LinkedIn Ads
remote_dependency: app-marketing-linkedin-ads {
  url: "git://github.com/looker/app-marketing-linkedin-ads"
  ref: "419b493d0808d32c4f3309ffef2a314d5728dbaa"
}

# LookML for analysis and content for Bing Ads
remote_dependency: app-marketing-bing-ads {
  url: "git://github.com/looker/app-marketing-bing-ads"
  ref: "5ae89c4e1167dd3b38d35f15e39863679157eb95"
}

# LookML for analysis and content for cross channel reporting
remote_dependency: app-marketing-crosschannel {
  url: "git://github.com/looker/app-marketing-crosschannel"
  ref: "19f564a72b0884dc694c5dbc7d3c8e220c1331dd"
}
