# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ana = Student.create!(name: 'Ana')
jon = Student.create!(name: 'Jon')
ian = Student.create!(name: 'Ian')
meg = Student.create!(name: 'Meg')

math = Course.create!(name: 'Math')
chem = Course.create!(name: 'Chem')
psych = Course.create!(name: 'Psych')

student_course_1 = math.student_courses.create!(student: ana, grade: 4.0)
student_course_2 = math.student_courses.create!(student: jon, grade: 3.8)
student_course_3 = math.student_courses.create!(student: ian, grade: 3.7)
student_course_4 = math.student_courses.create!(student: meg, grade: 3.9)
student_course_5 = chem.student_courses.create!(student: ana, grade: 3.8)
student_course_6 = psych.student_courses.create!(student: ana, grade: 3.9)
