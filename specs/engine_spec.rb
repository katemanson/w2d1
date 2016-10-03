require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../engine')

class TestEngine < MiniTest::Test

  def setup
    @standard_engine = Engine.new(-5, 10)
    @turbo = Engine.new(-10, 25)
    @suv = Engine.new(-15, 10)
    @hybrid = Engine.new(-2, 8)
  end

  def test_engine_get_fuel_step
    assert_equal(-10, @turbo.fuel_step)
  end

  def test_engine_get_speed_step
    assert_equal(10, @standard_engine.speed_step)
  end

end