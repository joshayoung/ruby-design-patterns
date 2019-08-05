RSpec.describe Factory do
  describe "" do
    it "works" do
      rock = Rock.new.output.roll
      paper = Paper.new.output.roll
      scissors = Scissors.new.output.roll
      expect(rock).to eq("Rock")
      expect(paper).to eq("Paper")
      expect(scissors).to eq("scissors")
    end
  end
end
