class Student < ApplicationRecord
  has_many :course_registrations, :dependent => :destroy
  has_many :exam_results, :dependent => :destroy
end
