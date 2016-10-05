class ComposerResource < JSONAPI::Resource
  attributes :name

  has_many :songs
end
