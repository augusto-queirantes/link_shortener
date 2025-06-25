source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "solid_cache", "~> 1.0.7"
gem "solid_queue", "~> 1.1.5"
gem "solid_cable", "~> 3.0.11"
gem "bootsnap", "~> 1.18", require: false

group :development, :test do
  gem "debug", "~> 1.11", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", "~> 7.0.2", require: false
  gem "rubocop-rails-omakase", "~> 1.1.0", require: false
  gem "dotenv-rails", "~> 3.1"
end
