class CreateExamResults < ActiveRecord::Migration[5.2]
  def change
    create_table :exam_results do |t|
      t.string :student_name
      t.integer :roll_no
      t.string :course_code
      t.string :exam_name
      t.integer :marks_obtained

      t.timestamps
    end
  end
end
