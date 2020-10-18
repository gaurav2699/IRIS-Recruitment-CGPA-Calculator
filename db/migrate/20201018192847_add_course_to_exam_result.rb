class AddCourseToExamResult < ActiveRecord::Migration[5.2]
  def change
    add_reference :exam_results, :course, foreign_key: true
  end
end
