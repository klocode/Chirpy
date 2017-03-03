class User < ApplicationRecord

  has_secure_password
  has_secure_token

  acts_as_follower
  acts_as_followable

  has_many :posts

  validates :username, presence: true, uniqueness: true
  validates :name, presence: true

# create method if they have a url use that as url value if not use robo hash
end
