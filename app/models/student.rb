class Student < ActiveRecord::Base
  belongs_to :teacher
  has_one :principle, through: :teacher
  has_one :school, through: :principle
end
