class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.decimal :amount_funded
      t.string :brand
      t.string :category

      t.timestamps null: false
    end
  end
end
