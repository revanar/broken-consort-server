class BookResource < JSONAPI::Resource
  attributes :name, :abbr, :year, :thumb_path, :remove_pdf_path
  attribute :pdf, delegate: :pdf_path

  filters :pdf_path

  has_many :songs
  has_one :editor
end
