module Observer
  RSpec.describe Observer do
    describe "Lever" do
      it "expect the intial value to match the values in initializer" do
        power_level = PowerLevel.new
        lever = Lever.new("Tractor Speed", 10, power_level)

        expect(lever.power).to eq(10)
      end

      it "expect the observer to be notified of any power changes" do
        power_level = PowerLevel.new
        lever = Lever.new("Tractor Speed", 10, power_level)

        lever.power = 20

        expect(lever.power).to eq(20)
      end
    end
  end
end

module Observers
  RSpec.describe Observers do
    describe "Lever" do
      it "multiple observers can be added" do
        power_level = PowerLevel.new
        gas_consumption = GasConsumption.new
        tire_wear = TireWear.new
        lever = Lever.new("Honda Speed")
        lever.append_observer(power_level)
        lever.append_observer(gas_consumption)
        lever.append_observer(tire_wear)

        expect(lever.observers).to include(power_level, gas_consumption, tire_wear)
      end

      it "updates each observer" do
        power_level = double(update: double)
        tire_wear = double(update: double)
        gas_consumption = double(update: double)
        allow(PowerLevel).to receive(:new).and_return(power_level)
        lever = Lever.new("Honda Speed")
        lever.append_observer(power_level)
        lever.append_observer(gas_consumption)
        lever.append_observer(tire_wear)

        lever.change_levels

        expect(power_level).to have_received(:update).with(lever)
        expect(tire_wear).to have_received(:update).with(lever)
        expect(gas_consumption).to have_received(:update).with(lever)
      end
    end
  end
end
