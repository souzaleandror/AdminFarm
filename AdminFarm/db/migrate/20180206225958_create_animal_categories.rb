class CreateAnimalCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :animal_categories do |t|
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :animal_categories, :name, unique: true
  end
end
