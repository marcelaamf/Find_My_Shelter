class AddLongitudeToShelters < ActiveRecord::Migration[6.1]
  def change
    add_column :shelters, :longitude, :float
  end
end
