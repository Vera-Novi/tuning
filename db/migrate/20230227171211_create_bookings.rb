class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :reservation_begin
      t.date :reservation_end
      t.references :user, null: false, foreign_key: true
      t.references :transport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
