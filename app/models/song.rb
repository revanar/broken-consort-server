class Song < ApplicationRecord
  belongs_to :composer, optional: true
  belongs_to :book, optional: true
  has_and_belongs_to_many :tags
end
