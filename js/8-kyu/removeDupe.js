distinct=a=> {
  let newArr= []
  a.map(item=>{
    !newArr.includes(item)&&newArr.push(item)
  })
  
  return newArr
}
