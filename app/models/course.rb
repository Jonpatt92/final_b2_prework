class Course < ApplicationRecord
  has_many :student_courses, inverse_of: :course
  has_many :students, through: :student_courses

  validates_presence_of :name

  def sorted_students
    self.students.joins(:student_courses).order('student_courses.grade desc')#.where(student_course: { course_id: self.id})
  end
end
