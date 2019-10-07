RSpec.describe Builder do
  describe "#initialize" do
    it "returns a new instance of Student" do
      student_builder = Builder.new

      expect(student_builder.student).to be_an_instance_of(Student)
    end
  end

  describe "Builder can" do
    let(:student_builder) { Builder.new }
    let(:student) do
      student_builder.add_history_101
      student_builder.add_physics_1
      student_builder.student
    end

    it "build up a more complex object by calling methods" do
      expect(student.courses.count).to eq(2)
    end

    it "returns two course objects" do
      expect(student.courses[0]).to be_an_instance_of(Course)
      expect(student.courses[1]).to be_an_instance_of(Course)
    end

    it "returns to a meal plan  objects" do
      student_builder.add_meal_plan([1, 2, 3])

      expect(student.meal_plan.plan_options).to eq([1, 2, 3])
    end
  end
end
