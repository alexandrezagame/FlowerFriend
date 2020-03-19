class AddCoordinatesToFlowerShops < ActiveRecord::Migration[5.2]
  def change
    add_column :flower_shops, :latitude, :float
    add_column :flower_shops, :longitude, :float
  end
end
