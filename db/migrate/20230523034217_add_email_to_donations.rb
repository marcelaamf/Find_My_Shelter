class AddEmailToDonations < ActiveRecord::Migration[6.1]
  def change
    add_column :donations, :email, :string
  end
end
