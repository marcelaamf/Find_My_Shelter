class Donation < ApplicationRecord
  belongs_to :shelter
  monetize :donation_amount_cents, as: "donation_amount"

  validates :donation_amount, numericality: { greater_than_or_equal_to: 0 }
end
