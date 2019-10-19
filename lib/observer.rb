module Observer
  class Lever
    attr_accessor :name
    attr_reader :power

    def initialize(name, power, power_level)
      @name = name
      @power = power
      @power_level = power_level
    end

    def power=(power)
      @power = power
      @power_level.increase_strength(self)
    end
  end

  class PowerLevel
    def increase_strength(level)
      "The #{level.name} was updated to #{level.power}"
    end
  end
end

module Observers
  class Lever
    attr_accessor :name
    attr_reader :power
    attr_reader :fuel_amount
    attr_reader :tread_level
    attr_reader :observers

    def initialize(name)
      @name = name
      @observers = []
    end

    def tell_observers
      @observers.each do |observ|
        observ.update(self)
      end
    end

    def append_observer(observ)
      @observers << observ
    end

    def delete_oberver(observ)
      @observers.delete(observ)
    end

    def change_levels
      tell_observers
    end
  end

  class PowerLevel
    def update(level)
      "The #{level.name} was updated to #{level.power}"
    end
  end

  class GasConsumption
    def update(level)
      "The #{level.name} used #{level.fuel_amount}"
    end
  end

  class TireWear
    def update(level)
      "The #{level.name} decreased tire tread by #{level.tread_level}"
    end
  end
end
