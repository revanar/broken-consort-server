class TagResource < JSONAPI::Resource
  attributes :name, :abbr, :desc, :color
  has_many :songs
end
