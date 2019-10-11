module Custom
  # Adapt this to the 'Food' interface (the adaptee)
  class Bread
    def initialize
      @cooking_steps = []
    end

    def mix
      @cooking_steps << "MIX"
    end

    def let_rise
      @cooking_steps << "RISE"
    end

    def bake
      @cooking_steps << "BAKE FOR 35 MIN AT 400 DEG"
    end
  end

  # Adapt this to the 'Food' interface (the adaptee)
  class Burger
    def initialize
      @preparation_steps = []
    end

    def thaw
      @preparation_steps << "THAW"
    end

    def make_patty
      @preparation_steps << "MAKE PATTY"
    end

    def grill
      @preparation_steps << "GRILL FOR 10 MIN"
    end
  end

  # We conform all object to this form (the target)
  class Food
    def initialize(adapter)
      @adapter = adapter
    end

    def cook
      @adapter.cook
    end
  end

  # We need to conform bread (the bread adapter)
  class BreadAdapter
    def initialize(bread)
      @bread = bread
    end

    # wrap different cooking processes:
    def cook
      @bread.mix
      @bread.let_rise
      @bread.bake
    end
  end

  # We need to conform burger (the burger adapter)
  class BurgerAdapter
    def initialize(burger)
      @burger = burger
    end

    # wrap different cooking processes:
    def cook
      @burger.thaw
      @burger.make_patty
      @burger.grill
    end
  end
end
