class CollectionResource < JSONAPI::Resource
  attributes :name, :creator, :desc, :thumb_path, :pdf_path

  def self.default_sort
    [{field: 'name', direction: :asc}]
  end
end
