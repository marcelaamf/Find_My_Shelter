class Shelter < ApplicationRecord
 
  belongs_to :category

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
end
