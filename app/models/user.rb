class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  validates :name, :password, presence: true

  has_many :figures
end
