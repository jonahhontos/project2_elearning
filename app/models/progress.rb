class Progress < ActiveRecord::Base
  belongs_to :student
  has_and_belongs_to_many :concepts
  has_and_belongs_to_many :exercises
end
