class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :transport

  validates :reservation_end, comparison: { greater_than: :reservation_begin }
  # validates_comparison_of :reservation_begin, less_than: :reservation_end, greater_than: -> { Date.today }
end
