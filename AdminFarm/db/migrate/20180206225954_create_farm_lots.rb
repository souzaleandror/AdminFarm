class CreateFarmLots < ActiveRecord::Migration[5.1]
  def change
    create_table :farm_lots do |t|
      t.references :farm, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
  end
end
