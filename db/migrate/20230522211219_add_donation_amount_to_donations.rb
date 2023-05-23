class AddDonationAmountToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :donation_amount_cents, :integer
  end
end
