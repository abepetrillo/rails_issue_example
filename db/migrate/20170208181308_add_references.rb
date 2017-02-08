class AddReferences < ActiveRecord::Migration
  def change
    add_reference :students, :teacher
    add_reference :teachers, :principle
    add_reference :principles, :school
  end
end
