class BaseUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  def store_dir
    path = ['uploads']
    path << (Rails.env.production? ? 'assets' : Rails.env)
    path << model.class.to_s.underscore
    path << mounted_as
    path << model.token # Use a generated token using SecureRandom instead of model.id
    path.compact.join('/')
  end

  def extension_white_list
    %w/jpg jpeg gif png svg/
  end

  def url(options={})
    # For CloudFront CDN enable "Forward Query Strings" under "Behaviours"
    super.split("?v=")[0]+"?v=#{model.updated_at.to_time.to_i}" rescue super
  end

end
