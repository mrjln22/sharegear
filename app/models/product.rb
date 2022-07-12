class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :category, presence: true
  has_one_attached :photo
  # include PgSearch::Model
  # pg_search_scope :search_by_name_and_category,
  # against: [ :name, :category ],
  # using: {
  #   tsearch: { prefix: true } # <-- now `superman batm` will return something!
  # }

  # has_one_attached :image
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :available, presence: true
end
