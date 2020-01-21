class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def count_fish_in_river()
    return @fish.count()
  end

  def add_fish_to_river(fish)
    @fish.push(fish)
  end

  def remove_all_fish_from_river()
    @fish.clear()
  end

end
