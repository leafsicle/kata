let positiveSum= arr => {
  
  let newVal =arr.filter(num => num>0).reduce((acc,curr)=>{
    return acc+curr
  },0)
  return newVal
}
