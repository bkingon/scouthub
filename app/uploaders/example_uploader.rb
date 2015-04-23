class ExampleUploader < BaseUploader

  def default_url
    "fallback/example_#{version_name}_default.png"
  end

  version(:small) { process resize_to_fit: [64, 64] }

end
