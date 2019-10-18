module Observer
  RSpec.describe Observer do
    describe "Lever" do
      it "expect the intial value to match the values in initializer" do
        power_level = PowerLevel.new
        lever = Lever.new("Tractor Speed", 10, power_level)

        expect(lever.power).to eq(10)
      end

      it "expect the observer to be notified of any power changes" do
        power_level = PowerLevel.new
        lever = Lever.new("Tractor Speed", 10, power_level)

        lever.power = 20

        expect(lever.power).to eq(20)
      end
    end
  end
end
