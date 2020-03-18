class AddAddressToFlowers < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :address, :string
  end
end
