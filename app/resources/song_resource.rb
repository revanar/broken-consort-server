class SongResource < JSONAPI::Resource
  attributes :name, :song_no, :parts_no
  attribute :pdf, delegate: :pdf_path

  has_one :composer
  has_one :book
  has_many :languages, acts_as_set: true
  has_many :tags, acts_as_set: true

  filters :parts_no

  def self.sortable_fields(context)
    super(context) << :"book.name"
  end
end
