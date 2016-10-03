require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../car' )

class CarTest < MiniTest::Test

  def setup
    @car_1 = Car.new(100, 0)
    @car_2 = Car.new(50, 100)
    @car_3 = Car.new(100, 5)
  end

  def test_fuel_level
    assert_equal(100, @car_1.fuel_level)
  end

  def test_speed
    assert_equal(0, @car_1.speed)
  end

  def test_accelerate__fuel_level
    @car_1.accelerate
    assert_equal(95, @car_1.fuel_level)
  end

  def test_accelerate__speed
    @car_1.accelerate
    assert_equal(10, @car_1.speed)
  end

  def test_brake__initial_speed_10_or_greater
    @car_2.brake
    assert_equal(90, @car_2.speed)
  end

  def test_brake__initial_speed_0
    @car_1.brake
    assert_equal(0, @car_1.speed)
  end

  def test_brake__initial_speed_less_than_10
    @car_3.brake
    assert_equal(0, @car_3.speed)
  end


end