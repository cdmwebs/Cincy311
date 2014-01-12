source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.2'
gem 'pg'

gem 'haml-rails'
gem 'high_voltage', ">= 1.2.0"
gem 'sentry-raven'

gem 'decent_exposure'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails', '1.1.0.pre'
gem 'jquery-rails'
gem 'foundation-rails'
gem 'ember-rails'
gem 'ember-source'
gem 'active_model_serializers'
gem 'geocoder'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

group :development, :test do
  gem 'debugger'
  gem 'rspec-rails'
  gem 'dotenv-rails'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :test do
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'timecop'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'poltergeist'
end

group :staging, :production do
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end

