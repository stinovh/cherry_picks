class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.date :delivery_date
      t.decimal :amount_funded
      t.integer :amount_backers
      t.text :description
      t.string :campaign_platform
      t.references :company, index: true, foreign_key: true
      t.boolean :aproved
      t.string :campaign_link
      t.boolean :on_platform

      t.timestamps null: false
    end
  end
end
