printerError= str => {
    let count = 0
    let compareVal = 'm'
    str.split('').map(character => {
      if(compareVal<character){
        count++
      }
    })
  return `${count}/${str.length}`
}