howManyYears =(date1, date2)=>{
  let date0 = date1.slice(0,4)
  let dateN = date2.slice(0,4)
  return Math.abs(date0 - dateN)
}