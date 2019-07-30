require_relative "../../../lib/builder/student_builder.rb"

RSpec.describe StudentBuilder do
  describe "#initialize" do
    it "returns a new instance of Student" do
      student_builder = StudentBuilder.new

      expect(student_builder.student).to be_type_of(Student)
    end
  end
end
