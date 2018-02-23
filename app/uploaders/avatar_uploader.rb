class AvatarUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  version :small do
    process :resize_to_limit => [200, 200]
  end

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url *_args
    [version_name, "default.png"].compact.join("_")
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end
end
