RSpec.describe Presenter do
  describe("#worker_one") do
    it "combines the output from two clases for use in a view" do
      presenter = Presenter.new

      worker_one = presenter.worker_one("Jeff", Volt.new, 2.99)

      expect(worker_one).to eq("Jeff drives a car with a 281.06 efficiency")
    end
  end

  describe("#worker_two") do
    it "combines the output from two clases for use in a view" do
      presenter = Presenter.new

      worker_one = presenter.worker_two("Jill", Leaf.new, 2.89)

      expect(worker_one).to eq("Jill drives a car with a 248.54 efficiency")
    end
  end
end
  
