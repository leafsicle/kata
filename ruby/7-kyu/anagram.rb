def is_anagram(test, original)
  (test.chars.map(&:downcase).sort)==
  (original.chars.map(&:downcase).sort)
end