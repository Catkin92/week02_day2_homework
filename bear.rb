class Bear

  attr_reader :name

  def initialize(name)
    @name = name
    @stomach = []
  end

  def fish_in_stomach
    @stomach.count
  end

  def roar
    return "ROARRRRRRRR!"
  end

  def eat_fish_in_river(river, fish)
    @stomach << fish
    river.lose_fish(fish)
  end

end
