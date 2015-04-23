guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/admin/.+\.rb})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{app/presenters/.+\.rb})
  watch(%r{config/locales/.+\.yml})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{(app|vendor)(/assets/\w+/(.+\.(coffee|css|html|jpg|js|png|sass|scss|svg))).*}) { |m| "/assets/#{m[3]}" }
end

guard 'rails', port: 3000 do
  watch('Gemfile.lock')
end
