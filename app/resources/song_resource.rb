class SongResource < JSONAPI::Resource
  attributes :name, :song_no, :parts_no, :has_text, :is_transcribed, :pdf_path

  has_one :composer
  has_one :book
  has_many :tags, acts_as_set: true

  filters :parts_no, :has_text, :is_transcribed

end
