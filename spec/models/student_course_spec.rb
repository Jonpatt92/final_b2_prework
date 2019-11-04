require 'rails_helper'

RSpec.describe StudentCourse do
  describe 'relationships' do
    it {should belong_to :course}
    it {should belong_to :student}
  end

  describe 'Validations' do
    it {should validate_presence_of :grade}
  end
end
