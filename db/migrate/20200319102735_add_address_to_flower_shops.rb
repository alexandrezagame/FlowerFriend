class AddAddressToFlowerShops < ActiveRecord::Migration[5.2]
  def change
    add_column :flower_shops, :address, :string
  end
end
