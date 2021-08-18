factorial = (n) =>{
  let sum =1
  if(n==0){
    return sum
  } else if (n<0||n>12){
    throw new RangeError("The argument must be between 0 & 12")  
  }
  else {
    for (let i=1; i<=n;i++)
      sum*=i
  } 
  return sum
}
