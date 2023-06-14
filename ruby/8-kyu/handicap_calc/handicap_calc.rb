def handicap_calc(scores)
  if scores.length < 1
    return "You need at least 1 score to start calculating a handicap."
  end
  score_diff = differentials_calc(scores.map { |score| differentials_calc(score[:adjusted_gross_score], score[:course_rating], score[:slope]) })
  avg_diff = differentials_average(score_diff)
  statistical_significance(avg_diff)
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

def statistical_significance(diff_avg)
  diff_avg * 0.96
end
