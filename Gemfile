# frozen_string_literal: true

source 'https://rubygems.org'

ruby RUBY_VERSION

# Run updates by following the Decidim upgrade instructions:
# https://github.com/decidim/decidim/blob/master/docs/getting_started.md#keeping-your-app-up-to-date
DECIDIM_VERSION = "0.22.0"
DECIDIM_MODULE_VERSION = "~> "0.22.0"

gem "decidim", DECIDIM_VERSION
# gem "decidim-consultations", "0.22.0"
gem "decidim-initiatives", DECIDIM_VERSION

# other modules
# gem "decidim-access_requests", DECIDIM_MODULE_VERSION
# gem "decidim-antivirus", DECIDIM_MODULE_VERSION
# gem "decidim-mpassid", DECIDIM_MODULE_VERSION
# gem "decidim-process_groups_content_block", DECIDIM_MODULE_VERSION
# gem "decidim-suomifi", DECIDIM_MODULE_VERSION
# gem "decidim-term_customizer", DECIDIM_MODULE_VERSION

# other unofficial modules
# Install the git modules until they have an actual release
# gem "decidim-accountability_simple", git: "https://github.com/mainio/decidim-module-accountability_simple"
# gem "decidim-apiauth", git: "https://github.com/mainio/decidim-module-apiauth"
# gem "decidim-combined_budgeting", git: "https://github.com/mainio/decidim-module-combined_budgeting"
# gem "decidim-plans", git: "https://github.com/mainio/decidim-module-plans", branch: "0.19-stable"
# gem "decidim-redirects", git: "https://github.com/mainio/decidim-module-redirects"
# gem 'decidim-navbar_links', git: "https://github.com/OpenSourcePolitics/decidim-module-navbar_links" 

# Issue with core dependencies not being required, see:
# https://github.com/decidim/decidim/issues/5257
gem "wicked_pdf", "~> 1.4"
# gem "wkhtmltopdf-binary", "~> 0.12"

gem 'bootsnap', '~> 1.3'

gem 'puma', '>= 4.3.5'
gem 'uglifier', '~> 4.1'

gem 'faker', '~> 1.9'

group :development, :test do
  gem 'byebug', '~> 11.0', platform: :mri

  gem 'decidim-dev', DECIDIM_VERSION
end

group :development do
  gem 'letter_opener_web', '~> 1.3'
  gem 'listen', '~> 3.1'
  gem 'spring', '~> 2.0'
  gem 'spring-watcher-listen', '~> 2.0'
  gem 'web-console', '~> 3.5'
end

