# I want to import a csv file with scores and calculate a handicap
# lets create a data model for the csv file

def handicap_calc(scores)
  if scores.length < 8
    return "You need at least 8 scores to calculate a handicap."
  end
  scores.sort!
  scores.shift
  scores.shift
  puts scores
end

def differentials_calc(adjusted_gross_score, course_rating, slope)
  score_difference = (adjusted_gross_score - course_rating) * 113
  adjusted_slope = slope * 1.0
  (score_difference / adjusted_slope).round(1)
end

def differentials_average(scores)
  case scores.sort!.length
  when 10
    score_count = 3
  when 15
    score_count = 6
  when 20
    score_count = 8
  end
  (scores.shift(score_count).sum / score_count).round(1)
end
