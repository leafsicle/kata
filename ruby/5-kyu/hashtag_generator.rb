def generateHashtag(str)
  str.strip!
  return false if str.empty?
  newStr = "#"
  str.split().map do |word|
    newStr<< word.capitalize
  end
  return false if newStr.length>140
  newStr
end