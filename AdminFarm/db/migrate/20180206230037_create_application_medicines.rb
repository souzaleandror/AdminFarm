class CreateApplicationMedicines < ActiveRecord::Migration[5.1]
  def change
    create_table :application_medicines do |t|
      t.references :animal, foreign_key: true
      t.references :medicine, foreign_key: true
      t.date :date_medicine
      t.string :observation

      t.timestamps
    end
  end
end
