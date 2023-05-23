class AddStripeChargeIdToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :stripe_charge_id, :string
  end
end
