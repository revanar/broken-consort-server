class SongResource < JSONAPI::Resource
  attributes :name, :song_no, :parts_no, :remove_pdf_path
  attribute :pdf, delegate: :pdf_path

  has_one :composer
  has_one :book
  has_many :languages, acts_as_set: true
  has_many :tags, acts_as_set: true

  filters :pdf_path

  def self.sortable_fields(context)
    super(context) << :"book.name" #note: only book.name needs to be added here because it's a relationship field.
  end

  def self.default_sort
    [{field: 'book.name', direction: :asc}, {field: 'song_no', direction: :asc}]
  end
end
