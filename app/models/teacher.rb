class Teacher < ActiveRecord::Base
  has_many :students
  belongs_to :principle
end
