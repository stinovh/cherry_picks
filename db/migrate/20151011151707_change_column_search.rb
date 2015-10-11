class ChangeColumnSearch < ActiveRecord::Migration
  def change
    remove_column :searches, :delivery_date
  end
end
