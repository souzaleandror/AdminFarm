class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.references :animal_category, foreign_key: true
      t.references :breed_animal, foreign_key: true
      t.references :gender, foreign_key: true
      t.references :animal_stage, foreign_key: true
      t.references :animal_state, foreign_key: true
      t.references :origin, foreign_key: true
      t.references :farm, foreign_key: true
      t.string :number_earring
      t.date :date_register
      t.date :birth_date
      t.string :earring_mother_number
      t.decimal :initial_weigh
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :animals, :number_earring, unique: true
  end
end
