module StrategyWithLambda
  RSpec.describe StrategyWithLambda do
    describe "BuildShoe" do
      it "displays the correct value for tennis shoe" do
        build_shoe = BuildShoe.new(TENNIS_SHOE_FORMATTER)

        expect(build_shoe.display).to eq "A tennis shoe with black laces"
      end

      it "displays the correct value for work boot" do
        build_shoe = BuildShoe.new(WORK_BOOT_FORMATTER)

        expect(build_shoe.display).to eq "A work boot with black laces"
      end

      it "allows the color to be changed" do
        build_shoe = BuildShoe.new(TENNIS_SHOE_FORMATTER)
        build_shoe.color = "blue"

        expect(build_shoe.display).to eq "A tennis shoe with blue laces"
      end
    end
  end
end

module Strategy
  RSpec.describe Strategy do
    describe "BuildShoe" do
      it "displays the correct value for tennis shoe" do
        build_shoe = BuildShoe.new(TennisShoe.new)

        expect(build_shoe.display).to eq "A tennis shoe with black laces"
      end

      it "displays the correct value for work boot" do
        build_shoe = BuildShoe.new(WorkBoot.new)

        expect(build_shoe.display).to eq "A work boot with black laces"
      end

      it "allows the color to be changed" do
        build_shoe = BuildShoe.new(TennisShoe.new)
        build_shoe.color = "blue"

        expect(build_shoe.display).to eq "A tennis shoe with blue laces"
      end
    end
  end
end
