class AddPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :price_cents, :integer
  end
end
