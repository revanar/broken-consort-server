class EditorResource < JSONAPI::Resource
  attributes :name

  has_many :books
end
