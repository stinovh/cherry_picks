class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :street_name
      t.integer :house_number
      t.string :city
      t.integer :zipcode
      t.string :country

      t.timestamps null: false
    end
  end
end
