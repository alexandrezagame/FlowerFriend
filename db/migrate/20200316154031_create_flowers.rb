class CreateFlowers < ActiveRecord::Migration[5.2]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :species
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
