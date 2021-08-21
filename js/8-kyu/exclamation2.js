remove= s =>{
  let arr = s.split('')
  while(arr[arr.length-1]==='!'){
    arr.splice(-1,1)
  } 
    
  return arr.join('')
}

//alternately
//remove=(s)=>{
//  return s.replace(/!+$/, '');
//}