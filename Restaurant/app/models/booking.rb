class Booking < ActiveRecord::Base
  attr_accessible :bookingDay, :bookingMonth, :bookingYear, :customerName, :peopleNo, :email, :contactNumber
  
end
