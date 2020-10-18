class AddStudentToExamResult < ActiveRecord::Migration[5.2]
  def change
    add_reference :exam_results, :student, foreign_key: true
  end
end
