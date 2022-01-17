def final_grade(exam, projects)
  if(exam>90||projects>10)
    return 100
  elsif(exam>75||projects>5)
    return 90  
  elsif(exam>50||projects>2)
    return 75
  else
    return 0
  end
end