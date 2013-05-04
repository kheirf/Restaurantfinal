class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :customerName
      t.datetime :bookingDate
      t.string :contactNumber
      t.string :email
      t.integer :peopleNo
      t.timestamps
    end
  end
end
