class Exercise < ActiveRecord::Base
  belongs_to :concept
  has_and_belongs_to_many :progresses
end
