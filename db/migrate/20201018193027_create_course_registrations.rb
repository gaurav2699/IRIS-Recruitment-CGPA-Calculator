class CreateCourseRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :course_registrations do |t|
      t.string :name
      t.integer :roll_no
      t.string :course_code

      t.timestamps
    end
  end
end
