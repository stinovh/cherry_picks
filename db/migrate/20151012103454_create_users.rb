class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_name
      t.integer :house_number
      t.string :city
      t.integer :zipcode
      t.string :country
      t.string :user_name

      t.timestamps null: false
    end
  end
end
