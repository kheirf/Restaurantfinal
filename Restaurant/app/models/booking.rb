class Booking < ActiveRecord::Base
  attr_accessible :bookingDate, :customerName, :peopleNo, :email, :contactNumber
  
end
