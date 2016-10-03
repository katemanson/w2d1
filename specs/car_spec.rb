require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../car' )
require_relative( '../engine' )

class CarTest < MiniTest::Test

  def setup

    @standard_engine = Engine.new(-5, 10)
    @turbo = Engine.new(-10, 25)
    @suv = Engine.new(-15, 10)
    @hybrid = Engine.new(-2, 8)

    @standard_car = Car.new(100, 0, @standard_engine)
    @sporty_car = Car.new(90, 25, @turbo)
    @scary_car = Car.new(10, 60, @suv)
    @posh_car = Car.new(98, 8, @hybrid)

  end

  def test_fuel_level
    assert_equal(100, @standard_car.fuel_level)
  end

  def test_speed
    assert_equal(25, @sporty_car.speed)
  end

  def test_accelerate__fuel_level
    @standard_car.accelerate
    assert_equal(95, @standard_car.fuel_level)
  end

  def test_accelerate__speed
    @sporty_car.accelerate
    assert_equal(50, @sporty_car.speed)
  end

  def test_accelerate__not_enough_fuel
    assert_equal("Out of fuel!", @scary_car.accelerate)
  end

  def test_brake__initial_speed_10_or_greater
    @sporty_car.brake
    assert_equal(15, @sporty_car.speed)
  end

  def test_brake__initial_speed_0
    @standard_car.brake
    assert_equal(0, @standard_car.speed)
  end

  def test_brake__initial_speed_less_than_10
    @posh_car.brake
    assert_equal(0, @posh_car.speed)
  end

  def test_maximum_speed
    assert_equal(200, @standard_car.maximum_speed)
    assert_equal(400, @posh_car.maximum_speed)
  end

end