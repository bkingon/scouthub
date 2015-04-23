require_relative 'production'

Rails.application.configure do
  config.action_mailer.default_url_options = { host: Rails.application.secrets.default_url_host }
end
