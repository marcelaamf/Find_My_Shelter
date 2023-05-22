class Shelter < ApplicationRecord
  mount_uploader :image, SheltersImageUploader
  belongs_to :category

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :image, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?



end
