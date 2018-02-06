class CreateAnimalStages < ActiveRecord::Migration[5.1]
  def change
    create_table :animal_stages do |t|
      t.references :animal_category, foreign_key: true
      t.references :gender, foreign_key: true
      t.string :name
      t.integer :min_month
      t.integer :max_month
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :animal_stages, :name, unique: true
  end
end
