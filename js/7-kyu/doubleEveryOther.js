doubleEveryOther=a=> {
  return arr = a.map((num,idx)=> {
    if(idx%2===1){
      return num*2
    }
    return num
  })
}

