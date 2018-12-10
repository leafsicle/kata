def is_anagram(test, original)
  (test.chars.map(&:downcase).sort)==
  (original.chars.map(&:downcase).sort)
  # smarter solution 
  # test.downcase.chars.sort == original.downcase.chars.sort

end