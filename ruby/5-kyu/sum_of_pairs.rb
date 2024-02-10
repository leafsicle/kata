def sum_pairs(ints, s)
  solutions = {}
  ints.each_with_index do |n, i|
    check_val = s - n
    if solutions.key?(check_val)
      return [check_val, n]
    end
    solutions[n] = i
  end
  nil
end