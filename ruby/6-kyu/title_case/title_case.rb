def title_case(title = "", minor_words = '')
  title_arr = title&&title.downcase.split
  ignore_arr = minor_words.downcase.split

  if title.nil? || title_arr.empty?
    return ""
    
  elsif title_arr && ignore_arr.empty? 
    return title_arr.each{|i| i.capitalize!}.join(' ')
    
  else
    title_arr.each_with_index { |word,idx|
     word.capitalize! unless (ignore_arr.include?(word) && !idx.zero?)
    }.join(' ')
    
  end
end