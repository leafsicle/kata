sumPairs=(ints, s)=>{
//   loop through the array and add the next in the sequence from an inner loop. 
  ints.forEach((num,idx) => {
    let temp =0
//   handle the case for when we are at the last items in the array in the inner loop    
    if(idx<ints.length){      
      for (let i =0; i<ints.length-idx-1;i++){
        console.log(i)
        
      }
    }
//   return the items as an array
//   return undefined if nothing equates to the sum
//   return [num, temp] || undefined ;
  })
}
