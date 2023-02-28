class Transport < ApplicationRecord
  has_many :users
  has_many :bookings
  has_one_attached :photo
end
