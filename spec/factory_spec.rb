RSpec.describe Factory do
  describe "Factory" do
    it "throws error when directly calling 'instance' on 'Factory'" do
      factory = Factory.new

      expect { factory.instance }
        .to raise_error(NotImplementedError, "Cannot call 'instance' on 'Factory'")
    end

    it "outputs 'Rock' when using the 'Rock' class" do
      expect(
        Rock.new.turn
      ).to eq("Rock")
    end

    it "outputs 'Paper' when using the 'Paper' class" do
      expect(
        Paper.new.turn
      ).to eq("Paper")
    end

    it "outputs 'Scissors' when using the 'Scissor' class" do
      expect(
        Scissors.new.turn
      ).to eq("Scissors")
    end

    it "outputs the correct message for each object" do
      rock = Rock.new.roll
      paper = Paper.new.roll
      scissors = Scissors.new.roll

      expect(rock).to eq("Rock beats scissors!")
      expect(paper).to eq("Paper beats rock!")
      expect(scissors).to eq("Scissors beats paper!")
    end
  end
end
