module Strategy2
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