class User < ApplicationRecord
  has_many :comments
  has_many :posts

  validates :username, presence: true, length: { maximum: 255 },
                       uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
