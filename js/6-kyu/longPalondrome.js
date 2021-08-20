is_Palindrome= str=> {
  let rev = str.split("").reverse().join("");
  return str == rev;
}

longestPalindrome=(str)=>{
  if (is_Palindrome(str)){
    return str.length
  } 
  
  let max_length = 0, maxp = ''

  for(let i=0; i < str.length; i++) {
    let subs = str.substr(i, str.length)

    for(let j=subs.length; j>=0; j--){
      let sub_subs_str = subs.substr(0, j)
      if (sub_subs_str.length <= 1)
        continue

      if (is_Palindrome(sub_subs_str)){
        if (sub_subs_str.length > max_length) {
          max_length = sub_subs_str.length;
          maxp = sub_subs_str;
        }
      }
    }
  }
  console.log(str,maxp.length)
return maxp.length
  
}