RSpec.describe Decorator2 do
  describe "Salad" do
    it "returns the cost" do
      salad = Salad.new

      expect(salad.cost).to eq(400)
    end
  end

  describe "LargeSalad" do
    it "returns cost of salad plus cost of larger salad" do
      large_salad = LargeSalad.new(Salad.new)

      expect(large_salad.cost).to eq(600)
    end
  end

  describe "SaladWithChicken" do
    context "when it is a normal sized salad" do
      it "returns cost of salad, plus cost of chicken" do
        salad_with_chicken = SaladWithChicken.new(Salad.new)

        expect(salad_with_chicken.cost).to eq(500)
      end
    end
    context "when it is a large salad" do
      it "returns cost of salad, plus upcharge, plus chicken" do
        salad_with_chicken = SaladWithChicken.new(LargeSalad.new(Salad.new))

        expect(salad_with_chicken.cost).to eq(700)
      end
    end
  end
end