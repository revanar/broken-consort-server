class Book < ApplicationRecord

  mount_base64_uploader :pdf_path, PdfUploader

  has_many :songs
  belongs_to :editor, optional: true
end
