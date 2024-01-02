require_relative "../xo"

RSpec.describe "Exes and Ohs::" do
  it "should pass sample tests" do
    expect(XO("xo")).to be true
    expect(XO("XO")).to be true
    expect(XO("xo0")).to be true
    expect(XO("xxxoo")).to be false
    expect(XO("xxOo")).to be true
  end
end
describe("Random tests") do
  def randint(a, b) = rand(b - a + 1).+(a)

  def XOsol(str) = lambda { |s| s.count("o") == s.count("x") }.call(str.downcase)

  it("should work for random tests") do
    40.times do
      len = randint(0, 10)
      str = ((randint(0, 1) == 0) ? ["X"] : ["x"]) * len + ((randint(0, 1) == 0) ? ["O"] : ["o"]) * len
      str += ["xoXO a=!"[randint(0, 7)]]
      str = str.shuffle.join
      expect(XO(str)).to eq(XOsol(str)), "It should work for #{str}"
    end
  end
end
