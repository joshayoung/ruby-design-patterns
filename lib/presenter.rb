# Use to combine more than one model for use in a view
# The calculations and car stats in this class are completly fictional.
class Presenter
  def worker_one(worker, car, gas_price)
    worker = Worker.new(worker, Car.new(car))
    fuel_efficiency = FuelEfficiency.new(worker.car, gas_price)
    "#{worker.name} drives a car with a #{fuel_efficiency.actual_efficiency} efficiency"
  end

  def worker_two(worker, car, gas_price)
    worker = Worker.new(worker, Car.new(car))
    fuel_efficiency = FuelEfficiency.new(worker.car, gas_price)
    "#{worker.name} drives a car with a #{fuel_efficiency.actual_efficiency} efficiency"
  end
end

class Worker
  attr_reader :name
  attr_reader :car

  def initialize(name, car)
    @name = name
    @car = car
  end
end

class Leaf
  attr_reader :efficiency_rating

  def initialize(er = 86, mpg = 24)
    @efficiency_rating = er
    @miles_per_gallon = mpg
  end
end

class Volt
  attr_reader :efficiency_rating

  def initialize(er = 94, mpg = 20)
    @efficiency_rating = er
    @miles_per_gallon = mpg
  end
end

class Car
  attr_reader :type
  attr_reader :tank_size
  attr_reader :color

  def initialize(type, color = "")
    @type = type
    @color = color
  end
end


class FuelEfficiency
  attr_reader :car
  attr_reader :gas_cost

  def initialize(car, gas_cost)
    @car = car
    @gas_cost = gas_cost
  end

  def actual_efficiency
    (gas_cost * car.type.efficiency_rating).round(2)
  end
end


