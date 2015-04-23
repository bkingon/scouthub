Rails.application.config.assets.version = (ENV['ASSETS_VERSION'] || '1.0')
Rails.application.config.assets.precompile += %w(application-preload.js vendor/modernizr.js)
Rails.application.config.assets.precompile += %w(preloader.css outdated-browser.css)
