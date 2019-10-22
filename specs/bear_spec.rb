require('minitest/autorun')
require('minitest/pride')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test

  def setup

    @bear = Bear.new("Winnie")

    @river = River.new("Severn")

    @fish1 = Fish.new("Marlin")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Dory")
    @fish4 = Fish.new("Bruce")

    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    @river.add_fish_to_river(@fish4)

  end

  def test_get_bear_name
    assert_equal("Winnie", @bear.name)
  end

  def test_fish_in_stomach
    assert_equal(0, @bear.fish_in_stomach)
  end

  def test_roar
    assert_equal("ROARRRRRRRR!", @bear.roar)
  end

  def test_eat_fish_in_river
    @bear.eat_fish_in_river(@river, @fish1)
    @bear.eat_fish_in_river(@river, @fish3)
    assert_equal(2, @bear.fish_in_stomach)
    assert_equal(2, @river.fish_count)
  end
end
