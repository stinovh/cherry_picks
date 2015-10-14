class AddPictureFieldToProduct < ActiveRecord::Migration
  def change
    add_column :products, :picture_path, :string
  end
end
