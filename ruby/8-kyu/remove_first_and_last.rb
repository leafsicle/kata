def remove_char(s)
  s.chars.drop(1).reverse.drop(1).reverse.join
end