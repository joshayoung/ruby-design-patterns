require_relative "../../lib/strategy/strategy2"

RSpec.describe Strategy2 do
  describe "BuildShoe" do
    it "displays the correct value for tennis shoe" do
      build_shoe = Strategy2::BuildShoe.new(Strategy2::TennisShoe.new)

      expect(build_shoe.display).to eq "A tennis shoe with black laces"
    end

    it "displays the correct value for work boot" do
      build_shoe = Strategy2::BuildShoe.new(Strategy2::WorkBoot.new)

      expect(build_shoe.display).to eq "A work boot with black laces"
    end

    it "allows the color to be changed" do
      build_shoe = Strategy2::BuildShoe.new(Strategy2::TennisShoe.new)
      build_shoe.color = "blue"

      expect(build_shoe.display).to eq "A tennis shoe with blue laces"
    end
  end
end
