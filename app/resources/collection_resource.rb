class CollectionResource < JSONAPI::Resource
  attributes :name, :creator, :desc, :thumb_path, :pdf_path
end
