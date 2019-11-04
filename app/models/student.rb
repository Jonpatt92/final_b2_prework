class Student < ApplicationRecord
  has_many :student_courses, inverse_of: :student
  has_many :courses, through: :student_courses

  validates_presence_of :name

  def grade(course_id)
    self.student_courses.where("course_id = ?", course_id).pluck(:grade)
  end
end
