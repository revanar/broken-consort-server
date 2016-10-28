class Book < ApplicationRecord

  mount_base64_uploader :pdf_path, PdfUploader
  mount_base64_uploader :thumb_path, ThumbUploader

  has_many :songs
  belongs_to :editor, optional: true
end
