well=x=>{
  let goodTest = x.filter(item=> item =='good').length
  return goodTest==0
    ?'Fail!'
    :goodTest>2
        ?'I smell a series!'
        :'Publish!'
}
