require('minitest/autorun')
require('minitest/pride')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup

    @river = River.new("Severn")

    @fish1 = Fish.new("Marlin")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Dory")
    @fish4 = Fish.new("Bruce")

  end

  def test_get_river_name
    assert_equal("Severn", @river.name)
  end

  def test_fish_count
    assert_equal(0, @river.fish_count)
  end

  def test_add_fish_to_river
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    assert_equal(3, @river.fish_count)
  end

  def test_lose_fish
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    @river.add_fish_to_river(@fish3)
    @river.lose_fish(@fish2)
    assert_equal(2, @river.fish_count)
  end
end
