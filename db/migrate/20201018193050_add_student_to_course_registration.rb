class AddStudentToCourseRegistration < ActiveRecord::Migration[5.2]
  def change
    add_reference :course_registrations, :student, foreign_key: true
  end
end
