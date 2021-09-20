billboard=(name, price = 30)=> {
  let cost = 0
  name.split("").map(char=>cost+=price)
  return cost
}
