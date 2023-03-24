def XO(str)
  dict = {
    "x" => 0,
    "o" => 0
  }
  ch_array = str.chars
  ch_array.map { |letter|
    if letter.downcase == "x" || letter.downcase == "o"
      dict[letter.downcase] += 1
    end
  }
  dict["x"] == dict["o"]
end
