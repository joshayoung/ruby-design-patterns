module Template
  RSpec.describe Template do
    describe "TennisShoe" do
      it "raises an error if you call an abstract method in the parent class" do
        tennis_shoe = TennisShoe.new

        expect { tennis_shoe.build }.to raise_error(StandardError)
      end
    end

    describe "DressShoe" do
      it "outputs the shoe correctly" do
        dress_shoe = DressShoe.new

        expect(dress_shoe.build).to eq("A black dress shoe")
      end
    end

    describe "WorkBoot" do
      it "outputs the shoe correctly" do
        work_boot = WorkBoot.new

        expect(work_boot.build).to eq("A durable brown work boot shoe with a steel toe")

      end
    end
  end
end
