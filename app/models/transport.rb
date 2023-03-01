class Transport < ApplicationRecord
  has_many :users
  has_many :bookings
  has_many_attached :photos
end
