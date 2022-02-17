findOdd= arr => {
  const countMap = new Map();
  arr.map(item=>{
    if (countMap.has(item)){
      let incrementer = countMap.get(item)
      incrementer+=1
      countMap.set(item,incrementer)
    } else {
      countMap.set(item,1)
    }
  })
  
  let oddKey = 0
  countMap.forEach((value, key)=>{
    if(value%2 !==0){
      oddKey= key
    }
  })
  return oddKey
}