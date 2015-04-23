Rails.configuration.middleware.use Browser::Middleware do
  redirect_to outdated_browser_path if browser.ie? && browser.version.to_i <= 8
  redirect_to outdated_browser_path if browser.firefox? && !browser.android? && browser.version.to_i <= 25
end
