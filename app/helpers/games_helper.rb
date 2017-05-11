module GamesHelper
  def same_values?(array)
    array.uniq.length == 1
  end

  def all_unique?(array)
    array.uniq.length == 3
  end

  def is_a_set?(potential_set)
    colors = potential_set.map {|card| card.color}
    symbols = potential_set.map {|card| card.symbol}
    numbers = potential_set.map {|card| card.number}
    shadings = potential_set.map {|card| card.shading}

    if (same_values?(colors) || all_unique?(colors)) && (same_values?(symbols) || all_unique?(symbols)) && (same_values?(numbers) || all_unique?(numbers)) && (same_values?(shadings) || all_unique?(shadings))
      true
    else
      false
    end
  end

  def any_sets?(board)
    combinations = board.combination(3).to_a
    sets = []
    combinations.each do |potential_set|
      if is_a_set?(potential_set)
        sets << potential_set
      end
    end
    sets.length > 0
  end

end

