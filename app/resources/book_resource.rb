class BookResource < JSONAPI::Resource
  attributes :name, :abbr, :year, :thumb_path, :pdf_path

  has_many :songs
  has_one :editor
end
