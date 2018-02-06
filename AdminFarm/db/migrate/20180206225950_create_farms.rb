class CreateFarms < ActiveRecord::Migration[5.1]
  def change
    create_table :farms do |t|
      t.string :name
      t.string :address
      t.integer :hectare_quantity
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :farms, :name, unique: true
  end
end
