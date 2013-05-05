class Booking < ActiveRecord::Base
  attr_accessible :bookingDate, :customerName, :peopleNo, :email, :contactNumber
  EMAIL_REGEX = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates :email, :format => EMAIL_REGEX
  validates :customerName, :presence => true
  validate :booking_date, :people_number
  
  def booking_date
    if !bookingDate.blank? and bookingDate < Date.today
      errors.add(:bookingDate, "Can't be in the past")
    end
  end
  
  def people_number
    if !peopleNo.blank? and peopleNo < 1
      errors.add(:peopleNo, "Provide how many person for reservation")
    end
  end
  
end
