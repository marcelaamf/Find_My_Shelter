class AddShelterToDonations < ActiveRecord::Migration[6.1]
  def change
    add_reference :donations, :shelter, null: false, foreign_key: true
  end
end
