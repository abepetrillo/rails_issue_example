require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "associations" do
    school = School.create(name: 'school')
    principal = Principle.create(name: 'Principal', school: school)
    teacher = Teacher.create(name: 'Teacher', principle: principal)
    student = Student.create(name: 'Student', teacher: teacher)
    assert student.school.id == school.id

    not_persisted_student = Student.new(name: 'unpersisted', teacher: teacher)
    assert not_persisted_student.school.id == school.id
  end
end
