def are_you_playing_banjo(name)
  first = name.chr
  bigR ='R'
  smallR= 'r'
  if first==bigR or first==smallR
    return "#{name} plays banjo"
  end
  return "#{name} does not play banjo"
end

# after seeing the top solution I forgot that I could 
#down or upcase the thing in a chain
#def are_you_playing_banjo(name)
#  name.chr.downcase == "r" ? "#{name} plays banjo" : "#{name} does not play banjo"
#end


