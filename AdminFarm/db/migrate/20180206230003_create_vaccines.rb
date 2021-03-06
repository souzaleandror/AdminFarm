class CreateVaccines < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccines do |t|
      t.references :animal_category, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :vaccines, :name, unique: true
  end
end
