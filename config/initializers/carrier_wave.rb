CarrierWave.configure do |config|

  if Rails.env.production? || Rails.env.staging?
    config.storage = :fog

    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     Rails.application.secrets.aws_key,
      aws_secret_access_key: Rails.application.secrets.aws_secret,
      region:                Rails.application.secrets.aws_region
    }

    config.fog_directory  = Rails.application.secrets.s3_bucket
    config.fog_public     = true
  else
    config.storage = :file
  end

end
