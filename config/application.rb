require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Scouthub
  class Application < Rails::Application

    config.exceptions_app = self.routes

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end

    config.i18n.default_locale = :en

    config.time_zone = 'Pretoria'
    config.active_record.default_timezone = :utc

    config.action_mailer.delivery_method = :postmark
    config.action_mailer.postmark_settings = {
      api_key: Rails.application.secrets.postmark_key
    }

    config.active_record.raise_in_transactional_callbacks = true
  end
end
