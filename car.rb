class Car

  attr_reader(:fuel_level, :speed, :engine)

  def initialize(fuel_level, speed, engine)
    @fuel_level = fuel_level
    @speed = speed
    @engine = engine
  end

  def accelerate
    if @fuel_level >= -@engine.fuel_step
      @fuel_level += @engine.fuel_step
      @speed += @engine.speed_step
    else
      return "Out of fuel!"
    end
  end

  def brake
    if @speed >= 10
      @speed -= 10
    else
      @speed = 0
    end
  end

  def maximum_speed
    while @fuel_level > 0
      accelerate
    end
    return @speed
  end

end