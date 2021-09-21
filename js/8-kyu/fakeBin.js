fakeBin = x => {
  return x.split('').map(val=>{
    if (parseInt(val)<5){
      return 0
    } else {
        return 1
      }
    }).join('')
}
//
//function fakeBin(x) {
//    return x.split('').map(n => n < 5 ? 0 : 1).join('');
//}
