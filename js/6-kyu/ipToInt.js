ipToInt32=ip=>{
  let str=""
  ip.split(".").map(octet=>{
    let tmp=(Number(octet).toString(2))
    while (tmp.length <8) {
      tmp='0' + tmp;
    }
    str+=tmp.toString()
  })
  return parseInt(str,2)
}
