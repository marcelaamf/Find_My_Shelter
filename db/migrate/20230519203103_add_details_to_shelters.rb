class AddDetailsToShelters < ActiveRecord::Migration[6.1]
  def change
    add_column :shelters, :website, :string
    add_column :shelters, :current_women, :integer
    add_column :shelters, :current_men, :integer
    add_column :shelters, :current_children, :integer
  end
end
