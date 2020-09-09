class Figure < ApplicationRecord
  has_one_attached :photo
  
  validates :name, :year, :brand, :photo, presence: true
  
  belongs_to :user
end
