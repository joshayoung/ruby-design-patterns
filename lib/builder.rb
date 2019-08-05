class Student
  attr_accessor :average
  attr_accessor :on_campus
  attr_accessor :meal_plan
  attr_accessor :hours
  attr_accessor :courses

  def initialize(average=nil, on_campus=true, meal_plan=MealPlan.new, hours=12, courses=[])
    @average = average
    @on_campus = on_campus
    @meal_plan = meal_plan
    @hours = hours
    @courses = courses
  end
end

class MealPlan
  attr_accessor :plan_options

  def initialize(plan_options=[])
    plan_options = plan_options
  end
end

class Course
  attr_accessor :disipline
  attr_accessor :current_grade
  attr_accessor :title
  attr_accessor :length

  def initialize(disipline="", current_grade=100, title="", length=1)
    @disipline = disipline
    @current_grade = current_grade
    @title = title
    @length = length
  end
end

class Courses
  attr_accessor :number
  attr_accessor :within_major
  attr_accessor :within_minor
  attr_accessor :course

  def initialize(number=4, within_major=3, within_minor=1, course=Course.new)
    @number = number
    @within_major = within_major
    @within_minor = within_minor
    @course = cours
  end
end

class Builder
  attr_accessor :student

  def initialize
    @student = Student.new
  end

  def add_meal_plan(options)
    @student.meal_plan.plan_options = options
  end

  def add_history_101
    @student.courses << Course.new(disipline="History", current_grade=100, title="History of Western Civilization 101", length=1)
  end

  def add_physics_1
    @student.courses << Course.new(disipline="Science", current_grade=100, title="Physics I", length=3)
  end
end
