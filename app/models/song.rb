class Song < ApplicationRecord

  mount_base64_uploader :pdf_path, PdfUploader

  belongs_to :composer, optional: true
  belongs_to :book, optional: true
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :tags

end
