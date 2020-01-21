require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../fish')
require_relative('../bear')
require_relative('../river')
class FishTest < Minitest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Delta")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Trout")
    @fish3 = Fish.new("Samon")
  end


end
