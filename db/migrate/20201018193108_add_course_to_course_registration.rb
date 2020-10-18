class AddCourseToCourseRegistration < ActiveRecord::Migration[5.2]
  def change
    add_reference :course_registrations, :course, foreign_key: true
  end
end
