require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../river')
require_relative('../fish')
require_relative('../bear')
class RiverTest < Minitest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Delta")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Samon")
  end

  def test_count_fish_in_river()
    assert_equal(0, @river.count_fish_in_river())
  end

  def test_add_fish_to_river()
    @river.add_fish_to_river(@fish1)
    assert_equal(1, @river.count_fish_in_river())
  end

  def test_remove_all_fish_from_river()
    @river.add_fish_to_river(@fish1)
    @river.remove_all_fish_from_river()
    assert_equal(0, @river.count_fish_in_river())
  end

  def test_count_fish_in_river__muliple_fish()
    @river.add_fish_to_river(@fish1)
    @river.add_fish_to_river(@fish2)
    assert_equal(2, @river.count_fish_in_river())
  end


end
