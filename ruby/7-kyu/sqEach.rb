def square_digits num
  newStr=""
  
  for i in num.to_s.split('') do
    tempC =i.to_i
    newChar= (tempC**2).to_s
    newStr=newStr+newChar
  end
  
return newStr.to_i
end