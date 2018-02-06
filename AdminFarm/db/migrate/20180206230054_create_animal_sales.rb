class CreateAnimalSales < ActiveRecord::Migration[5.1]
  def change
    create_table :animal_sales do |t|
      t.references :animal, foreign_key: true
      t.references :sale_type, foreign_key: true
      t.references :destiny, foreign_key: true
      t.date :date_sale
      t.string :observation
      t.decimal :purchase_value
      t.decimal :sales_value
      t.decimal :final_weigh

      t.timestamps
    end
  end
end
