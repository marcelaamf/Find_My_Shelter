class AddPictureToShelters < ActiveRecord::Migration[6.1]
  def change
    add_column :shelters, :image, :string
  end
end
