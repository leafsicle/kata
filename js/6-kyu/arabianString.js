camelize= str => {
  let returnString=''
  str.replace(/[^a-z0-9]/gi,' ').split(' ').map(word=>{
    if (word.length>0 ) returnString+=(word[0].toUpperCase()+word.substring(1).toLowerCase())
  })
  return returnString
}
