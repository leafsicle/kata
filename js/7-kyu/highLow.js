highAndLow= nums =>{
  let arr = []
  let str =''
  nums.split(' ').map(num=>{
    arr.push(Number.parseInt(num))
  })
  arr.sort(compareNumbers)
  str=(arr[arr.length-1]).toString()+ ' '+ (arr[0]).toString()
  return str
}
function compareNumbers(a, b) {
  return a - b;
}

//I like this version better
//highAndLow=numbers=>{
//  let arr = numbers.split(' ').map(Number)
//  return Math.max(...arr) + ' ' + Math.min(...arr)
//}