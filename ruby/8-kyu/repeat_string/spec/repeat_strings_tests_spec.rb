require_relative "../repeat_string"

RSpec.describe "String Repeat::" do
  context "should pass basic tests" do
    it "returns the given string 'n' times" do
      expect(repeat_str(3, "*")).to eq("***")
      expect(repeat_str(5, "#")).to eq("#####")
      expect(repeat_str(2, "ha ")).to eq("ha ha ")
    end
    it "returns an empty string if n == 0" do
      expect(repeat_str(0, "ha ")).to eq("")
    end
    it "returns an empty string if s is empty" do
      expect(repeat_str(3, "")).to eq("")
    end
    it "returns an empty string if s is nil" do
      expect(repeat_str(3, nil)).to eq("")
    end
  end
end

