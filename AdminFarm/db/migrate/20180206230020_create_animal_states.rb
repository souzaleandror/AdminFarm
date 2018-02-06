class CreateAnimalStates < ActiveRecord::Migration[5.1]
  def change
    create_table :animal_states do |t|
      t.references :animal_category, foreign_key: true
      t.references :gender, foreign_key: true
      t.string :name
      t.decimal :weigh_min
      t.decimal :weigh_max
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
  end
end
