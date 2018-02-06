class CreateAnimalDeaths < ActiveRecord::Migration[5.1]
  def change
    create_table :animal_deaths do |t|
      t.references :animal, foreign_key: true
      t.references :death_type, foreign_key: true
      t.references :destiny, foreign_key: true
      t.date :date_death
      t.string :observation
      t.decimal :final_weigh

      t.timestamps
    end
  end
end
