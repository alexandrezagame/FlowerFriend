class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :flower_shops, dependent: :destroy
  has_many :bookings, through: :flower_shops

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
