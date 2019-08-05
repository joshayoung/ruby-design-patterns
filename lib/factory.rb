class Factory
  def output
    raise NotImplementedError, "#{self.class} cannot be called"
  end

  def turn
    output.operation
  end
end

class Rock
  def output
    RockTurn.new
  end

end

class Paper
  def output
    PaperTurn.new
  end

end

class Scissors
  def output
    ScissorTurn.new
  end
end

class Turn
  def roll
    raise NotImplementedError, "#{self.class} cannot be called"
  end
end

class RockTurn < Turn
  def roll
    "Rock"
  end
end

class PaperTurn < Turn
  def roll
    "Paper"
  end
end

class ScissorTurn < Turn
  def roll
    "scissors"
  end
end
