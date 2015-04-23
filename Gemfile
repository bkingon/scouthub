source 'https://rubygems.org'
source 'https://xXL4VPWtuQuzx4Kst6Qy@gem.fury.io/p45/'

ruby '2.2.0'

gem 'rails', '4.2.1'
gem 'pg'
gem 'devise'
# gem 'activeadmin', github: 'activeadmin'

# Core
gem 'breadcrumbs_on_rails'
gem 'browser'
gem 'helper_elf', '~> 1.1'
gem 'high_voltage'
gem 'simple_form'
gem 'slim-rails'

# CSS
gem 'bourbon', '~> 4.0'
gem 'neat', '~> 1.7'
gem 'sass-rails', '~> 5.0'

# JavaScript
gem 'coffee-rails'
gem 'jquery-rails'
gem 'therubyracer', platforms: :ruby
gem 'turbolinks'
gem 'uglifier'

# Assets
gem 'font-awesome-rails'

# File management
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'

# Mailers
gem 'postmark-rails'
gem 'premailer-rails'

# Misc
gem 'honeybadger'
gem 'unicorn'

group :development, :test do
  gem 'dotenv-rails'
end

group :development do
  gem 'byebug'
  gem 'guard-livereload', require: false
  gem 'guard-rails'
  gem 'spring'
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter', require: false
  gem 'factory_girl_rails'
  gem 'rspec-html-matchers'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'simplecov', require: false
end

group :production, :staging do
  gem 'rails_12factor'
end
