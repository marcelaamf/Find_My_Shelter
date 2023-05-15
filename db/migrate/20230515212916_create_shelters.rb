class CreateShelters < ActiveRecord::Migration[6.1]
  def change
    create_table :shelters do |t|
      t.string :name
      t.string :address
      t.integer :category_id
      t.string :phone
      t.string :email
      t.integer :men_capacity
      t.integer :women_capacity
      t.integer :children_capacity
      t.boolean :accept_man
      t.boolean :accept_woman
      t.boolean :youth_only
      t.boolean :accept_kids
      t.boolean :clothing
      t.boolean :restroom_service
      t.boolean :counselling_service
      t.boolean :cafeteria
      t.integer :current_residents

      t.timestamps
    end
  end
end
