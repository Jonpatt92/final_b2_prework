class StudentCourse < ApplicationRecord
  belongs_to :course, inverse_of: :student_courses
  belongs_to :student, inverse_of: :student_courses

  validates_associated :course
  validates_associated :student

  validates_presence_of :grade
end
