class AddTotalCentsToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :total_cents, :integer
  end
end
