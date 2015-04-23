module Routing
  extend ActiveSupport::Concern
  include Rails.application.routes.url_helpers

  included do
    def default_url_options
      ActionMailer::Base.default_url_options
    end
  end
end

class BasePresenter < SimpleDelegator

  include Rails.application.helpers
  include Routing

  protected

    def h
      ActionController::Base.helpers
    end

    def br
      h.concat(h.tag(:br))
    end

    def ndash
      h.concat(' &ndash; '.html_safe)
    end

    def mdash
      h.concat(' &mdash; '.html_safe)
    end

    def human_url(url)
      url.gsub(/http(.*)\/\//,'') if url
    end

    def model
      __getobj__
    end

end
