def reverse_words(str)
  str.split(/ /).map {|x| x.reverse}.join(" ")
end
#I learned a thing!