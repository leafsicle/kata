require_relative "../jaden_case"

RSpec.describe "Digit count::" do
  str = "How can mirrors be real if our eyes aren't real"
  it "should return a string" do
    expect(str.toJadenCase()).to eq("How Can Mirrors Be Real If Our Eyes Aren't Real")
  end
end
