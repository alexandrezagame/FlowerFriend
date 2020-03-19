class Flower < ApplicationRecord
  SPECIES = ["Rose", "Cactuc", "Lily", "Tulip", "Pione", "Gladiolus Larkspur", "Azalea", "Moth orchids", "Coneflower", "Touch-me-not", "Lily of the Nile", "Cactus", "Sweet pea"]
  has_one_attached :picture
  belongs_to :flower_shop
  validates :name, presence: true
  validates :species, presence: true, inclusion: {in: SPECIES}
  validates :total_price, presence: true
end
