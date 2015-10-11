class AddColumnsToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :price, :decimal
    add_column :searches, :delivery_date, :decimal
    add_column :searches, :campaign_platform, :string
  end
end
