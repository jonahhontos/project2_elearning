class Instructor < ActiveRecord::Base
  has_many :courses

  has_secure_password
end
