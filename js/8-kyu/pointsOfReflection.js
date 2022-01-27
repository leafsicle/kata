symmetricPoint=(p, q)=> {
  let diff1 = q[0]-p[0]
  let diff2 = q[1]-p[1]
  return [q[0]+diff1,q[1]+diff2]
}