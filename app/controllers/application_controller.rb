class ApplicationController < ActionController::Base

  before_action :basic_auth

  protect_from_forgery with: :exception

  private

    def basic_auth
      if Rails.application.secrets.http_basic_user and Rails.application.secrets.http_basic_pass
        authenticate_or_request_with_http_basic do |username, password|
          username == Rails.application.secrets.http_basic_user && password == Rails.application.secrets.http_basic_pass
        end
      end
    end

end
