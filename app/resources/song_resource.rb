class SongResource < JSONAPI::Resource
  attributes :name, :song_no, :parts_no, :has_text
  attribute :pdf, delegate: :pdf_path

  has_one :composer
  has_one :book
  has_one :language
  has_many :tags, acts_as_set: true

  filters :parts_no, :has_text

end
