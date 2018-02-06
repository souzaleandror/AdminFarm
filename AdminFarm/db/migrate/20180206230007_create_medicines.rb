class CreateMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :medicines do |t|
      t.references :animal_category, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :medicines, :name, unique: true
  end
end
