def title_case(title = "", minor_words = '')
  # This is the highest rated solution on https://www.codewars.com/kata/5202ef17a402dd033c000009/train/ruby
  # title.capitalize.split().map{|a| minor_words.downcase.split().include?(a) ? a : a.capitalize}.join(' ')

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