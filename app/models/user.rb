class User < ApplicationRecord
  validates :username, :email, presence: true

  has_many :posts
  has_many :comments
end
