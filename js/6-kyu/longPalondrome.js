longestPalindrome= s=>{
  if (!s) return 0
  for (let i = s.length; i > 0; i--) {
    for (let j = 0; j <= s.length - i; j++) {
      var check = s.substr(j, i)
      if (check === check.split("").reverse().join("")) return i
    }
  }
}