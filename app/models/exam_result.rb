class ExamResult < ApplicationRecord
  belongs_to :course
  belongs_to :student
end
