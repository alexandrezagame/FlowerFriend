class FlowerShop < ApplicationRecord
  belongs_to :user
  has_many :flowers
  has_many :bookings, through: :flowers
end
