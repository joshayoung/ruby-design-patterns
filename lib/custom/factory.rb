module Custom
  class Factory
    def instance
      raise NotImplementedError,
        "Cannot call '#{__method__}' on '#{self.class}'"
    end

    def turn
     instance.run
    end

    def roll
      return "Rock beats scissors!" if self.instance_of?(Rock)
      return "Paper beats rock!" if self.instance_of?(Paper)
      return "Scissors beats paper!" if self.instance_of?(Scissors)
    end
  end

  class RockProduct
    def run
      'Rock'
    end
  end

  class PaperProduct
    def run
      'Paper'
    end
  end

  class ScissorsProduct
    def run
      'Scissors'
    end
  end

  class Rock < Factory
    def instance
      RockProduct.new
    end
  end

  class Paper < Factory
    def instance
      PaperProduct.new
    end
  end

  class Scissors < Factory
    def instance
      ScissorsProduct.new
    end
  end
end
