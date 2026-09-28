def even_numbers(arr, n)
  # new = []
  # arr.each { |x| new << x if x.even? }
  # new.last(n)
  arr.select(&:even?).last(n)
end
