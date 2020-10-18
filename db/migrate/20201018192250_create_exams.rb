class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :course_code
      t.integer :max_marks
      t.integer :weightage

      t.timestamps
    end
  end
end
