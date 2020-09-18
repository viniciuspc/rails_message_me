class User < ApplicationRecord
  validates :username, presence: true, length: {minimu: 3, maximum: 15}, uniqueness: { scope: :username,
    message: "This username already exists" }
  has_secure_password
end
