source "https://rubygems.org"

ruby "3.2.2"

# Rails core
gem "rails", "~> 7.1.0"
gem "pg", "~> 1.5"
gem "puma", "~> 6.0"

# Asset pipeline
gem "sprockets-rails"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"

# Security
gem "brakeman"
gem "bundler-audit"

# Testing
group :development, :test do
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "knapsack_pro"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end

# Development tools
group :development do
  gem "web-console"
  gem "debug"
end
