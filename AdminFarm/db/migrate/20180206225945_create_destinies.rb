class CreateDestinies < ActiveRecord::Migration[5.1]
  def change
    create_table :destinies do |t|
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :destinies, :name, unique: true
  end
end
