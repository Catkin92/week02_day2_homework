class River

  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    @fish.count
  end

  def add_fish_to_river(fish)
    @fish << fish
  end

  def lose_fish(fish)
    @fish.delete(fish)
  end
end
