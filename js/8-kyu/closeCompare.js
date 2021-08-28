closeCompare=(a, b, m= 0)=> {
  return Math.abs(a - b) <= m? 0 : a < b ? -1 : 1
}