Rails.application.routes.draw do

  %w(404 422 500 outdated-browser).each do |error_page|
    match error_page, to: "errors#error_#{error_page.underscore}", via: :all
  end

  match 'styleguide', to: 'pages#styleguide', as: :styleguide, via: :all
  get '*id', to: 'pages#show', as: :page, format: false
  root to: 'pages#show', id: 'index'

end
