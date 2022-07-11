class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # has_one_attached :image
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :available, presence: true
end
