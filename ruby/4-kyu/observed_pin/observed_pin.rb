def get_pins(observed)
  nearby = {
    nil => [nil],
    1 => [1, 2, 4],
    2 => [1, 2, 3, 5],
    3 => [2, 3, 6],
    4 => [1, 4, 5, 7],
    5 => [2, 4, 5, 6, 8],
    6 => [3, 5, 6, 9],
    7 => [4, 7, 8],
    8 => [5, 7, 8, 9, 0],
    9 => [6, 8, 9],
    0 => [0, 8]
  }
  if observed.length == 1
    return nearby[observed.to_s]
  end
  nearby = get_nearby(observed[0])
  nearby.map { |num| get_pins(observed[1..-1]).map { |num2| num + num2 } }.flatten
end
