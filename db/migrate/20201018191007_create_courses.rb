class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :course_code
      t.string :credits
      t.string :integer
      t.string :criteria
      t.integer :aa
      t.integer :ab
      t.integer :bb
      t.integer :bc
      t.integer :cc
      t.integer :cd
      t.integer :dd

      t.timestamps
    end
  end
end
