class Strategy
  def calculate(_data)
    raise NotImplementedError, 
      "Cannot call '#{__method__}' on '#{self.class}'"
  end
end

class Arithmetic
  attr_writer :strategy

  def initialize(strategy)
    @strategy = strategy
    @numbers = [1, 2, 3, 4, 5, 6]
  end

  def output
    @strategy.calculate(@numbers)
  end
end

class MultiplyByThree < Strategy
  def calculate(data)
    data.map { |n| n * 3 }
  end
end

class AddByOne < Strategy
  def calculate(data)
    data.map { |n| n + 1 }
  end
end
