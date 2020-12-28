require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  @student = Student.new()
end


test "Student table does not contain roll_no with required datatype" do
  assert @student.column_for_attribute('roll_no').type==:integer
end

test "Student table does not contain name with required datatype" do
  assert @student.column_for_attribute('name').type==:string

end

test "Student table does not contain branch with required datatype" do
  assert @student.column_for_attribute('branch').type==:string
end

test "Student table does not contain cgpa with required datatype" do
  assert @student.column_for_attribute('cgpa').type==:float
end

test "Student table does not contain address with required datatype" do
  assert @student.column_for_attribute('address').type==:text
end

end
