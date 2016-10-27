# encoding: utf-8

class PdfUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick, CarrierWave::MimeTypes
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "pdfs/#{model.class.to_s.underscore}/#{model.id}"
  end

  def cache_dir
    '/home/vagrant/.tmp'
  end


  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  def cover
    manipulate! do |frame, index|
      frame if index.zero?
    end
  end

  version :thumb do
    process :cover
    process :convert => 'png'
    process :resize_to_fit => [200, 300]
    process :set_content_type_png
    def full_filename (for_file = model.document.file)
      super.chomp(File.extname(super)) + '.png'
    end
  end

  def set_content_type_png(*args)
    Rails.logger.debug "#{file.content_type}"
    self.file.instance_variable_set(:@content_type, "image/png")
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(pdf)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
