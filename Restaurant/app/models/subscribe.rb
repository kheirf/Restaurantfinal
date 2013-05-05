class Subscribe < ActiveRecord::Base
  EMAIL_REGEX = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :customerName, :presence => true
  attr_accessible :customerName, :email
end
