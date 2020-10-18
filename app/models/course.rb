class Course < ApplicationRecord
  has_many :course_registrations, :dependent => :destroy
  has_many :exam_results, :dependent => :destroy
  has_many :exams, :dependent => :destroy
end
