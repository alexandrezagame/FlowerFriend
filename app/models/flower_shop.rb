class FlowerShop < ApplicationRecord
  belongs_to :user
  has_many :flowers
  has_many :bookings, through: :flowers
  geocoded_by :address
  validates :name, presence: true
  validates :address, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
