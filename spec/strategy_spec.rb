RSpec.describe Strategy do
  describe "Strategy Pattern" do
    it "uses strategy passed in to derive the result" do
      add_by_one = Arithmetic.new(AddByOne.new).output

      expect(add_by_one).to eq([2, 3, 4, 5, 6, 7])
    end

    it "changes strategy when a different object is supplied" do
      multiply_by_three = Arithmetic.new(
                            MultiplyByThree.new
                          ).output

      expect(multiply_by_three).to eq([3, 6, 9, 12, 15, 18])
    end

    it "can reassign the strategy" do
      result = Arithmetic.new(MultiplyByThree.new)
      result.strategy = AddByOne.new

      expect(result.output).to eq([2, 3, 4, 5, 6, 7])
    end
  end
end
