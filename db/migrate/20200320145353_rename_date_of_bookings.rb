class RenameDateOfBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :end_date
    rename_column :bookings, :start_date, :pick_up_date
  end
end
