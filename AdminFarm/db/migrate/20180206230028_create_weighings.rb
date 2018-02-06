class CreateWeighings < ActiveRecord::Migration[5.1]
  def change
    create_table :weighings do |t|
      t.references :animal, foreign_key: true
      t.references :animal_stage, foreign_key: true
      t.date :weigh_date
      t.decimal :weight
      t.decimal :gain_weight
      t.references :animal_state, foreign_key: true
      t.boolean :pregnant
      t.boolean :sick
      t.string :description
      t.string :observation

      t.timestamps
    end
  end
end
