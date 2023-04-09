require_relative "../add_length"

RSpec.describe "String Repeat::" do
  context "should pass basic tests" do
    it "returns the given string 'n' times" do
      expect(add_length('apple ban')).to eq(["apple 5", "ban 3"])
      expect(add_length('you will win')).to eq(["you 3", "will 4", "win 3"])
      expect(add_length('you')).to eq(["you 3"])
      expect(add_length('y')).to eq(["y 1"])
    end
  end
end

