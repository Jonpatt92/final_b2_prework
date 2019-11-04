require 'rails_helper'

describe "When I visit a student's show page" do
  before(:each) do
    @ana = Student.create!(name: 'Ana')
    @jon = Student.create!(name: 'Jon')
    @ian = Student.create!(name: 'Ian')
    @meg = Student.create!(name: 'Meg')
    @math = Course.create!(name: 'Math')
    @chem = Course.create!(name: 'Chem')
    @psych = Course.create!(name: 'Psych')
    @student_course_2 = @math.student_courses.create!(student: @jon, grade: 3.8)
    @student_course_3 = @math.student_courses.create!(student: @ian, grade: 3.7)
    @student_course_4 = @math.student_courses.create!(student: @meg, grade: 3.9)
    @student_course_1 = @math.student_courses.create!(student: @ana, grade: 4.0)
    @student_course_5 = @chem.student_courses.create!(student: @ana, grade: 3.8)
    @student_course_6 = @psych.student_courses.create!(student: @ana, grade: 3.9)
  end

  it 'Shows me the student name and every enrolled course and their grade' do
    visit student_path(@ana)
    save_and_open_page
    expect(page).to have_content('Ana')
    expect(page).to have_content('Courses:')

    within "#course-#{@math.id}" do
      expect(page).to have_content('Math')
      expect(page).to have_content('Grade: [4.0]')
    end

    within "#course-#{@psych.id}" do
      expect(page).to have_content('Psych')
      expect(page).to have_content('Grade: [3.9]')
    end

    within "#course-#{@chem.id}" do
      expect(page).to have_content('Chem')
      expect(page).to have_content('Grade: [3.8]')
    end
  end
end
