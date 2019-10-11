module Custom
  RSpec.describe Decorator do
    describe "Decorator" do
      it "cannot call 'education_level' on the 'Student' class" do
        base = Student.new

        expect { base.education_level }
          .to raise_error(NotImplementedError, "Cannot call 'education_level' on 'Custom::Student' class")
      end

      it "StudentWithBachelors" do
        student = StudentWithBachelors.new
        expect(student.education_level).to eq("StudentWithBachelors")
      end

      it "StudentWithGraduateDegree" do
        student = StudentWithBachelors.new
        graduate = StudentWithGraduateDegree.new(student)
        expect(graduate.education_level).to eq("StudentWithGraduateDegree(StudentWithBachelors)")
      end

      it "StudentWithDoctoralDegree" do
        student = StudentWithBachelors.new
        graduate = StudentWithGraduateDegree.new(student)
        doctorate = StudentWithDoctoralDegree.new(graduate)
        expect(doctorate.education_level).to eq("StudentWithDoctoralDegree(StudentWithGraduateDegree(StudentWithBachelors))")
      end
    end
  end
end
