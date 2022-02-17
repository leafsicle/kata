descendingOrder=n=>{
  let arr =Array.from(String(n), Number)
  let sortRevArr = arr.sort((a, b) => a - b).reverse()
  let joinedNum = sortRevArr.join("")
  return parseInt(joinedNum)
}