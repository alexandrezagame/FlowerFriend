class RemoveReferenceFromFlowers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :flowers, :user, index: true
  end
end


