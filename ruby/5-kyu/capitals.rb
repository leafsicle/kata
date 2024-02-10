def capitals(word)
  idx=[]
  word.chars().each {|x| x.match?(/[A-Z]/) ? idx<<word.index(x) : nil}
  idx
end