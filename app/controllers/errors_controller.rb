class ErrorsController < ApplicationController

  def error_outdated_browser
    render :error_outdated_browser, layout: false
  end

end
