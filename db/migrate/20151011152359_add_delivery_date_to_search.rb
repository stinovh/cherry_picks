class AddDeliveryDateToSearch < ActiveRecord::Migration
  def change
    add_column :searches, :delivery_date, :date
  end
end
