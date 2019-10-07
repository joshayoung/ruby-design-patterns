# The template pattern at it's core uses Inheritance
module Template
  class Template; end

  class Shoe
    def type
      raise "Called abstract method: 'type'"
    end

    def laces?
      # The template base class can contain some default code.
      false
    end

    def color
      raise "Called abstract method: 'color'"
    end

    def build_shoe
      raise "Called abstract method: 'build_shoe'"
    end

    def output_laces
      raise "Called abstract method: 'output_laces'"
    end

    def build
      the_shoe = build_shoe
      the_shoe += output_laces if laces?
      the_shoe
    end
  end

  class TennisShoe < Shoe
    def build
      output_laces
    end
  end

  class DressShoe < Shoe
    def build_shoe
      "A #{color} #{type} shoe"
    end

    def type
      "dress"
    end

    def color
      "black"
    end

    def laces?
      false
    end

    def output_laces
      "with laces"
    end
  end

  class WorkBoot < Shoe
    def build_shoe
      "A durable #{color} #{type} shoe with a steel toe"
    end

    def type
      "work boot"
    end

    def color
      "brown"
    end
  end
end