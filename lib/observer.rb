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
