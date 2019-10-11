module Decorator
  class Salad
    def cost
      400
    end
  end

  class LargeSalad
    def initialize(salad)
      @salad = salad
    end

    def cost
      @salad.cost + 200
    end
  end

  class SaladWithChicken
    def initialize(salad)
      @salad = salad
    end

    def cost
      @salad.cost + 100
    end
  end
end
