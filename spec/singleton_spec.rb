RSpec.describe Singleton do
  describe ".instance" do
    it "returns a single instance" do
      instance = Singleton.instance
      another_instance = Singleton.instance

      expect(instance).to eq(another_instance)
    end

    it "can access methods defined on the instance" do
      instance = Singleton.instance

      expect(instance.temperature).to eq("80")
    end
  end
end
