class AddLatitudeToShelters < ActiveRecord::Migration[6.1]
  def change
    add_column :shelters, :latitude, :float
  end
end
