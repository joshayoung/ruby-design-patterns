module StrategyWithLambda
  TENNIS_SHOE_FORMATTER = lambda do |shoe|
    "A tennis shoe with #{shoe.color} laces"
  end

  WORK_BOOT_FORMATTER = lambda do |boot|
    "A work boot with #{boot.color} laces"
  end

  class BuildShoe
    attr_accessor :color
    attr_accessor :shoe

    def initialize(formatter)
      @color = "black"
      @shoe = shoe
      @formatter = formatter
    end

    def display
      @formatter.call(self)
    end
  end
end

module Strategy
  class TennisShoe
    def build(obj)
      "A tennis shoe with #{obj.color} laces"
    end
  end

  class WorkBoot
    def build(obj)
      "A work boot with #{obj.color} laces"
    end
  end

  class BuildShoe
    attr_accessor :color
    attr_accessor :shoe

    def initialize(shoe)
      @color = "black"
      @shoe = shoe
    end

    def display
      @shoe.build(self)
    end
  end
end
