class AddCoordinatesToFlowers < ActiveRecord::Migration[5.2]
  def change
    add_column :flowers, :latitude, :float
    add_column :flowers, :longitude, :float
  end
end
