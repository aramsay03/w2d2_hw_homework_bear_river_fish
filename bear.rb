class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_stomach_count()
    return @stomach.count()
  end

  def bear_eats_fish(fish)
    @stomach.push(fish)
  end

  def bear_roars()
    p "Roar Roar....Roar"
  end

  def bear_take_fish_from_river(fish, river)
    for fish in fish
      bear_eats_fish(fish)
    end
    # @fish.remove_all_fish_from_river()
    bear_roars()
    p @river.fish
  end



end
