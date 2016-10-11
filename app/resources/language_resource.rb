class LanguageResource < JSONAPI::Resource
  attribute :name

  has_many :songs
end
