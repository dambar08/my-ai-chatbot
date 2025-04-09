source "https://rubygems.org"

gem "rails", "~> 8.0.2" # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "pg", "~> 1.5"
gem "propshaft" # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "puma", ">= 5.0" # Use the Puma web server [https://github.com/puma/puma]
gem "jsbundling-rails" # Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "turbo-rails" # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "stimulus-rails" # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "cssbundling-rails" # Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "jbuilder" # Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "bcrypt", "~> 3.1.7" # Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "tzinfo-data", platforms: %i[ windows jruby ] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "solid_cache" # Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_queue"
gem "solid_cable"
gem "bootsnap", require: false # Reduces boot times through caching; required in config/boot.rb
gem "kamal", require: false # Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "thruster", require: false # Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem "image_processing", "~> 1.2" # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "annotate", "~> 2.6"
gem "pundit", "~> 2.5"

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude" # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "brakeman", require: false # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "rubocop-rails-omakase", require: false # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "dotenv-rails", "~> 3.1"
  gem "factory_bot_rails", "~> 6.4"
  gem "erb_lint"
end

group :development do
  gem "web-console" # Use console on exceptions pages [https://github.com/rails/web-console]
end

group :test do
  gem "capybara" # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "selenium-webdriver"
  gem "rspec-rails", "~> 7.1"
end
