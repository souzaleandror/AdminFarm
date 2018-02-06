class CreateVaccinations < ActiveRecord::Migration[5.1]
  def change
    create_table :vaccinations do |t|
      t.references :animal, foreign_key: true
      t.references :vaccine, foreign_key: true
      t.date :date_vaccine
      t.string :observation

      t.timestamps
    end
  end
end
