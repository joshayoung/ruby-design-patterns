module Custom
  RSpec.describe Food do
    describe "Food Adapter" do
      it "cooks bread properly" do
        bread = Bread.new
        bread_adapter = BreadAdapter.new(bread)

        cooking_process = Food.new(bread_adapter).cook

        expect(cooking_process)
          .to eq(
            ["MIX", "RISE", "BAKE FOR 35 MIN AT 400 DEG"]
        )
      end

      it "cooks burger properly" do
        burger = Burger.new
        burger_adapter = BurgerAdapter.new(burger)

        cooking_process = Food.new(burger_adapter).cook

        expect(cooking_process)
          .to eq(
            [ "THAW", "MAKE PATTY", "GRILL FOR 10 MIN" ]
        )
      end
    end
  end
end
