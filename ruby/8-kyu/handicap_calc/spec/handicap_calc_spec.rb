require_relative "../handicap_calc"
require "json"
file = File.read("./data.json")
data = JSON.parse(file)

RSpec.describe "Golf Handicap Calc" do
  context "should pass basic tests" do
    it "yells at you if no scores are provided " do
      expect(handicap_calc([])).to eq("You need at least 1 score to start calculating a handicap.")
    end
    it "returns the correct handicap" do
      expect(handicap_calc(data["scores_data"])).to eq(6.2)
    end
  end
  context "The differentials calc method" do
    it "returns the correct score differential" do
      data["scores_data"].each do |score|
        expect(differentials_calc(score["adjusted_gross_score"], score["course_rating"], score["slope"])).to eq(score["score_differential"])
      end
    end
  end

  context "The differentials average method" do
    it "returns the correct average based on how many scores are received" do
      expect(differentials_average(data["last_10_scores"])).to eq(22.5)
      expect(differentials_average(data["last_15_scores"])).to eq(23.3)
      expect(differentials_average(data["last_20_scores"])).to eq(18.2)
    end
  end
end
