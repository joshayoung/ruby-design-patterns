class Singleton
  @instance = new

  def self.instance
    @instance
  end

  def temperature
    "80"
  end

  private_class_method :new
end
