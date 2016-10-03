class Engine

  attr_reader(:fuel_step, :speed_step)

  def initialize(fuel_step, speed_step)
    @fuel_step = fuel_step
    @speed_step = speed_step
  end

end