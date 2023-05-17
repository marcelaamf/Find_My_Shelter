class AddDescriptionToShelters < ActiveRecord::Migration[6.1]
  def change
    add_column :shelters, :description, :string
  end
end
