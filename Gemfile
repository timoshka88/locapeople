source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'pg'
gem 'httparty'
# gem 'rack-utf8_sanitizer'
# gem 'handle_invalid_percent_encoding_requests'

group :assets do
	gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'handlebars_assets'
end

gem 'jquery-rails'

gem 'bcrypt-ruby', '~> 3.0.0'
gem 'rack-flash3'

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rake'
  gem 'simplecov', '~> 0.7.1', :require => false
end

group :development, :test do
  gem 'dotenv-rails'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'jasmine-rails'
end

gem 'rails_12factor', group: :production
