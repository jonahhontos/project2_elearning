class Concept < ActiveRecord::Base
  belongs_to :course
  has_many :exercises
  has_and_belongs_to_many :progresses
end
