class Transport < ApplicationRecord
  has_many :users
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  include PgSearch::Model
    pg_search_scope :search_by_brand_and_year,
  against: [ :brand, :year ],
  using: {
    tsearch: { prefix: true }
  }
end
