class Concept < ActiveRecord::Base
  belongs_to :course
  has_many :exercises, dependent: :destroy
  has_and_belongs_to_many :progresses
end
