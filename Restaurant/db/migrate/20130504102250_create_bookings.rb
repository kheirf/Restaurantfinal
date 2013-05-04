class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :customerName
      t.datetime :bookingDay
      t.integer :peopleNo
      t.integer :bookingMonth
      t.integer :bookingYear
      t.timestamps
    end
  end
end
