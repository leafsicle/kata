def pangram?(string)
  dict={}
  string.downcase.chars.map{ |letter|
    if letter.match(/^[a-z]+$/)
      if !dict.key?(letter)
        dict.merge!(letter => 1)
      end
    end
  }
  dict.keys.uniq.length ==26
end