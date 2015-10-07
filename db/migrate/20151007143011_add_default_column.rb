class AddDefaultColumn < ActiveRecord::Migration
  def change
    change_column :products, :on_platform, :boolean, default: true, null: false
  end
end
