class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  # has_one_attached :image
  # validates :name, presence: true
  # validates :price, presence: true
  # validates :available, presence: true
end
