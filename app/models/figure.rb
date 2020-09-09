class Figure < ApplicationRecord
  validates :name, :year, :brand, :photo, presence: true
  
  belongs_to :user
end
