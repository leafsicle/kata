def solution(string)
  # break the string into individual letters. Iterate over the letters
  ch_array = string.chars
  return string unless ch_array.length > 0

  ch_array.each_with_index do |letter, index|
    ch_array[index] = " " + letter if index > 0 && letter =~ /[A-Z]/
  end
  ch_array.join
end
