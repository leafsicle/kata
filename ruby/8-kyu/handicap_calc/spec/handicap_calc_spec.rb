require_relative "../handicap_calc"
scores_data = [
  {
    id: 1,
    adjusted_gross_score: 75,
    course_rating: 70,
    slope: 120,
    score_differential: 4.7
  },
  {
    id: 2,
    adjusted_gross_score: 80,
    course_rating: 72,
    slope: 115,
    score_differential: 7.9
  },
  {
    id: 3,
    adjusted_gross_score: 90,
    course_rating: 68,
    slope: 125,
    score_differential: 19.9
  },
  {
    id: 4,
    adjusted_gross_score: 95,
    course_rating: 74,
    slope: 118,
    score_differential: 20.1
  },
  {
    id: 5,
    adjusted_gross_score: 82,
    course_rating: 69,
    slope: 112,
    score_differential: 13.1
  },
  {
    id: 6,
    adjusted_gross_score: 78,
    course_rating: 71,
    slope: 116,
    score_differential: 6.8
  },
  {
    id: 7,
    adjusted_gross_score: 88,
    course_rating: 73,
    slope: 122,
    score_differential: 13.9
  },
  {
    id: 8,
    adjusted_gross_score: 93,
    course_rating: 75,
    slope: 119,
    score_differential: 17.1
  },
  {
    id: 9,
    adjusted_gross_score: 79,
    course_rating: 70,
    slope: 114,
    score_differential: 8.9
  },
  {
    id: 10,
    adjusted_gross_score: 87,
    course_rating: 72,
    slope: 117,
    score_differential: 14.5
  }
  # {
  #   id: 11,
  #   adjusted_gross_score: 92,
  #   course_rating: 68,
  #   slope: 126,
  #   score_differential: 8.1
  # },
  # {
  #   id: 12,
  #   adjusted_gross_score: 97,
  #   course_rating: 74,
  #   slope: 113,
  #   score_differential: 10.2
  # },
  # {
  #   id: 13,
  #   adjusted_gross_score: 83,
  #   course_rating: 69,
  #   slope: 111,
  #   score_differential: 10.7
  # },
  # {
  #   id: 14,
  #   adjusted_gross_score: 77,
  #   course_rating: 71,
  #   slope: 121,
  #   score_differential: 5.6
  # },
  # {
  #   id: 15,
  #   adjusted_gross_score: 85,
  #   course_rating: 73,
  #   slope: 120,
  #   score_differential: 6.9
  # },
  # {
  #   id: 16,
  #   adjusted_gross_score: 91,
  #   course_rating: 75,
  #   slope: 118,
  #   score_differential: 7.7
  # },
  # {
  #   id: 17,
  #   adjusted_gross_score: 76,
  #   course_rating: 70,
  #   slope: 113,
  #   score_differential: 6.4
  # },
  # {
  #   id: 18,
  #   adjusted_gross_score: 84,
  #   course_rating: 72,
  #   slope: 116,
  #   score_differential: 5.9
  # },
  # {
  #   id: 19,
  #   adjusted_gross_score: 94,
  #   course_rating: 68,
  #   slope: 123,
  #   score_differential: 13.1
  # },
  # {
  #   id: 20,
  #   adjusted_gross_score: 98,
  #   course_rating: 74,
  #   slope: 112,
  #   score_differential: 11.0
  # }
]

RSpec.describe "Golf Handicap Calc" do
  context "should pass basic tests" do
    it "returns the correct score when given at least 8 scores" do
      expect(handicap_calc([])).to eq("You need at least 8 scores to calculate a handicap.")
    end
  end
end
RSpec.describe "The differentials calc method" do
  it "returns the correct score differential" do
    scores_data.each do |score|
      expect(differentials_calc(score[:adjusted_gross_score], score[:course_rating], score[:slope])).to eq(score[:score_differential])
    end
  end
end
last_10_scores = [
  26.7,
  24.5,
  24.1,
  27.4,
  26.3,
  21.3,
  26.6,
  22.6,
  25.6,
  23.5
]
RSpec.describe "The differentials average method" do
  it "returns the correct average based on how many scores are received" do
    expect(differentials_average(last_10_scores)).to eq(22.5)
  end
end
