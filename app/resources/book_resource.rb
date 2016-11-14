class BookResource < JSONAPI::Resource
  attributes :name, :desc, :year, :remove_pdf_path, :remove_thumb_path
  attribute :pdf, delegate: :pdf_path
  attribute :thumb, delegate: :thumb_path

  filters :pdf_path

  has_many :songs
  has_one :editor

  def self.default_sort
    [{field: 'name', direction: :asc}]
  end
end
