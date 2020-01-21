require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../bear')
require_relative('../fish')
require_relative('../river')
class BearTest < Minitest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Delta")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Samon")

    @fish = [@fish1, @fish2, @fish3]
  end

  def test_bear_stomach_count()
    assert_equal(0, @bear.bear_stomach_count())
  end

  def test_bear_eats_fish()
    @bear.bear_eats_fish(@fish1)
    assert_equal(1, @bear.bear_stomach_count())
  end

  def test_bear_take_fish_from_river()
    @river.add_fish_to_river(@fish)
    @bear.bear_take_fish_from_river(@fish, @river)
    assert_equal(0, @river.count_fish_in_river())
    assert_equal(3, @bear.bear_stomach_count())
    assert_equal("Roar Roar....Roar", @bear.bear_roars())
  end

  def test_bear_roars()
    assert_equal("Roar Roar....Roar", @bear.bear_roars())
  end



end
