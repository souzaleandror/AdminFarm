class CreateBreedAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :breed_animals do |t|
      t.references :animal_category, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :breed_animals, :name, unique: true
  end
end
