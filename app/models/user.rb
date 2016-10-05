class User < ApplicationRecord
  validates_presence_of :email
  validates_presence_of :password
  validates :email, uniqueness: true, format: /@/
end
