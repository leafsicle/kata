let grow = x => {
  let mult = 1

  x.map(x => {
    mult *= x
  })
  return mult
}
