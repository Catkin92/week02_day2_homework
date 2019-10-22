require('minitest/autorun')
require('minitest/pride')
require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def test_get_fish_name
    fish = Fish.new("Nemo")
    assert_equal("Nemo", fish.name)
  end


end
