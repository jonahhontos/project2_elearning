class Course < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :subject
end
