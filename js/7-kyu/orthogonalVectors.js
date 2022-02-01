isOrthogonal=(u,v)=> {
  let arr=[]
  for(let i=0; i<u.length;i++){
    arr.push(u[i]*v[i])
  }
  return 0===arr.reduce((prev, curr) => prev + curr)}

