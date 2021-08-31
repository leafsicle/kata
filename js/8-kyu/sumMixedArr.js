sumMix= x=> {
  let sum =0
  for (let i =0; i<x.length;i++){
    console.log(x[i])
    if (parseInt(x[i])){
      sum+= parseInt(x[i])
    }
  }
  return sum
}

//sumMix=x=>{
  return x.map(a => +a).reduce((a, b) => a + b);
}