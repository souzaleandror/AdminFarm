class CreateSaleTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :sale_types do |t|
      t.string :name
      t.string :description
      t.boolean :obsolete

      t.timestamps
    end
  end
end
