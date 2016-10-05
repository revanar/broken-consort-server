class Book < ApplicationRecord
  has_many :songs
  belongs_to :editor, optional: true
end
