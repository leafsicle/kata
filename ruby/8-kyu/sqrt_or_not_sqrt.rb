def square_or_square_root(arr)
  arr2 = []
  arr.each do |num|
    arr2 << (Math.sqrt(num)%1==0 ? Math.sqrt(num) : num**2 )
  end
  arr2
end