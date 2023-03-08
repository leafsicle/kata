def nb_dig(n, d)
  arr = []
  arr << (0..n).map { |i| i**2 }
  arr.join.count(d.to_s)
end
