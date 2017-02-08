class Principle < ActiveRecord::Base
  has_many :teachers
  belongs_to :school
end
