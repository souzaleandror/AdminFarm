class CreateOrigins < ActiveRecord::Migration[5.1]
  def change
    create_table :origins do |t|
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
    add_index :origins, :name, unique: true
  end
end
