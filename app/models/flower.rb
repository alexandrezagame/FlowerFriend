class Flower < ApplicationRecord
  SPECIES = %w(Rose Cactuc Lily Tulip Pione) #API HERE LATER
  belongs_to :user
  validates :name, presence: true
  validates :species, presence: true, inclusion: {in: SPECIES}
  # validates :price_per_day, presence: true
end
