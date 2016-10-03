class Car

  attr_reader(:fuel_level, :speed)

  def initialize(fuel_level, speed)
    @fuel_level = fuel_level
    @speed = speed
  end

  def accelerate
    @fuel_level -= 5
    @speed += 10
  end

  def brake
    if @speed >= 10
      @speed -= 10
    else
      @speed = 0
    end
  end

end