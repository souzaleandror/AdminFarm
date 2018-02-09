class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slogan
      t.string :phone
      t.string :fax
      t.string :cel
      t.string :description
      t.string :info
      t.string :email
      t.string :contact_email
      t.text :mission
      t.text :vision
      t.text :valuables

      t.timestamps
    end
    add_index :companies, :name, unique: true
  end
end
