require_relative "../title_case"

RSpec.describe "Random Tests" do
  words = "nouns time person year way day thing man world life hand part child eye woman
                 place work week case point government company number group problem fact verbs
                 be have do say get make go know take see come think look want give use find
                 tell ask work seem feel try leave call adjectives good new first last long
                 great little own other old right big high different small large next early
                 young important few public bad same able".split
  50.times do
    s = words.sample + words.sample(rand(1..4)).map { |w| w.capitalize }.join
    exp = s.gsub(/([A-Z])/, ' \1')
  end
  it("Testing \"#{s}\", expecting: \"#{exp}\"") do
    expect(solution(s)).to eq(exp)
  end
end
