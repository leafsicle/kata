def adjacent_element_product(array)
  array.each_cons(2).map { |a,b| a * b }.max
end