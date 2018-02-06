class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.string :info
      t.string :obs
      t.boolean :answered

      t.timestamps
    end
  end
end
