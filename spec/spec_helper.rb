require 'dotenv'
require 'codeclimate-test-reporter'
require 'simplecov'

Dotenv.load

if ENV['CODECLIMATE_REPO_TOKEN']
  SimpleCov.formatters = [
    SimpleCov::Formatter::HTMLFormatter,
    CodeClimate::TestReporter::Formatter
  ]
end

# Config docs: http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|

  if config.files_to_run.one?
    config.default_formatter = 'doc'
  else
    SimpleCov.start 'rails'
  end

  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.order = :random
end
