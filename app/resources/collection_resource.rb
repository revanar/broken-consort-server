class CollectionResource < JSONAPI::Resource
  attributes :name, :creator, :desc, :remove_thumb_path, :remove_pdf_path
  attribute :pdf, delegate: :pdf_path
  attribute :thumb, delegate: :thumb_path


  def self.default_sort
    [{field: 'name', direction: :asc}]
  end
end
