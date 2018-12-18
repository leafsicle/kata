def find_next_square(sq)
 
  num=Math.sqrt(sq)
  diff=num-num.floor
 
 if diff !=0 
    return -1
  else num+=1
    num*num
  end
  
end
