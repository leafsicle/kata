def sumDigits(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end