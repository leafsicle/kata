def bmi(weight, height)
  # This is still a terrible way to represent bodyfat
  bmi = weight/height**2
  case bmi
    when 0..18.5 
      "Underweight"
    when 18.5..25
      "Normal"
    when 25..30
      "Overweight"
    else
      "Obese"
  end
end