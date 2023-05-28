require_relative "../add_length"

RSpec.describe "String Repeat::" do
  context "should pass basic tests" do
    it "returns the given string 'n' times" do
      expect(add_length('apple ban')).to eq(["apple 5", "ban 3"])
      expect(add_length('you will win')).to eq(["you 3", "will 4", "win 3"])
      expect(add_length('you')).to eq(["you 3"])
      expect(add_length('y')).to eq(["y 1"])
      expect(add_length('apple ban'),["apple 5", "ban 3"]);
      expect(add_length('you will win'),["you 3", "will 4", "win 3"]);
      expect(add_length('you'),["you 3"]);
      expect(add_length('y'),["y 1"]);
      expect(add_length('x y z'),["x 1", "y 1", "z 1"]);
      expect(add_length('xyz'),["xyz 3"]);
      expect(add_length('xyz x y z xyz'),["xyz 3", "x 1", "y 1", "z 1", "xyz 3"]);
      expect(add_length('a bc cde'),["a 1", "bc 2", "cde 3"]);
      expect(add_length('a ab abc'),["a 1", "ab 2", "abc 3"]);
      expect(add_length('a ab abc ab a'),["a 1", "ab 2", "abc 3", "ab 2", "a 1"]);
    end
  end
end
