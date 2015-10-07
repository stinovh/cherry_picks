class ChangeColumnDefault < ActiveRecord::Migration
  def change
    change_column :products, :approved, :boolean, default: false, null: false
    change_column :products, :on_platform, :boolean, null: false
  end
end
