let moveZeros= arr => {
  let clean = arr.filter(el => el !== 0)
  let len = arr.length - clean.length
 
  return clean.concat(Array(len).fill(0))
}
