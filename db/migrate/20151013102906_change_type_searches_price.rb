class ChangeTypeSearchesPrice < ActiveRecord::Migration
  def change
    change_column :searches, :price, :integer
  end
end
