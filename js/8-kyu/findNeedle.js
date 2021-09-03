findNeedle = (haystack)=> {
  for (thresh =0; thresh<haystack.length; thresh++){
    if(haystack[thresh]==="needle"){
      return (`found the needle at position ${thresh}`)
    }
  }
}
