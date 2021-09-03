multipleOfIndex= arr=> {
  return arr.filter( (num,index) => Number.isInteger(num / index))
}