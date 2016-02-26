class Course < ActiveRecord::Base
  belongs_to :instructor
  belongs_to :subject
  has_and_belongs_to_many :students
  has_many :concepts
  dependent: :destroy
end
