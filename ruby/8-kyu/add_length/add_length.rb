def add_length(str)
  str.split.map { |s| "#{s} #{s.size}" }
end