class ChangeProductsColumnName < ActiveRecord::Migration
  def change
    rename_column :products, :aproved, :approved
  end
end
