class AddCityToShelters < ActiveRecord::Migration[6.1]
  def change
    add_column :shelters, :city, :string
  end
end
