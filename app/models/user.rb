class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :flower_shop, dependent: :destroy
  has_many :bookings, through: :flower_shop

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
