def reverse_words(str)
  str.split(/ /).map {|x| x.reverse}.join(" ")
end
#I learned a thing!
#   str.gsub(/\S+/, &:reverse)
# this was a better way to do this.
#I really need to learn GSUB and REGEX better