order=words=>{
  let returnStr=[]
  if(words === ""){
    return ""
  }  
  let arr = words.split(" ")
  for(let i = 0; i <= arr.length; i++) {
    for(let j = 0; j < arr.length; j++) {
      if(arr[j].indexOf(i) >= 0) {
        returnStr.push(arr[j])
      }
    }
  }
  return returnStr.join(" ")
}