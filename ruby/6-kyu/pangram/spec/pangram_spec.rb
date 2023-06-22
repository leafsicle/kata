require_relative "../pangram" 
begin
  alias pangram? panagram?
rescue
end

def tst?(string)
  (?a..?z).to_a == string.downcase.chars.uniq.sort.select{ |x| /[a-z]/ === x}
end

describe "Pangram" do
  it "Check if string is a Pangram" do
    # "The quick brown fox jumps over the lazy dog."
    expect(pangram?("The quick brown fox jumps over the lazy dog.")).to eq(true)
    # "This is not a pangram."
    expect(pangram?("This is not a pangram.")).to eq(false)
  end
  it "Not Pangram" do
    s =  [ 
      "This isn't a pangram!",
      "abcdefghijklmopqrstuvwxyz ",
      "aaaaaaaaaaaaaaaaaaaaaaaaaa",
      "Detect Pangram",
      "A pangram is a sentence that contains every single letter of the alphabet at least once."
    ]
    s.each do |x|
        expect(pangram?(x.dup)).to eq(false), x + " is not a pangram"
    end
  end
  it "Pangram" do
    s =   [
      "Cwm fjord bank glyphs vext quiz",
      "Pack my box with five dozen liquor jugs.",
      "How quickly daft jumping zebras vex.",
      "ABCD45EFGH,IJK,LMNOPQR56STUVW3XYZ",
      "AbCdEfGhIjKlM zYxWvUtSrQpOn"
    ]
    s.each do |x|
        expect(pangram?(x.dup)).to eq(true), x + " is a pangram"
    end
  end
  it "Auto generated test" do
    
    def string_shuffle_and_capitalize(s)
      s.split("").shuffle.map{|x| (rand(2) == 0 ? x.upcase : x) + (rand(10) == 0 ? " " : "")}.join
    end        

    chars = Array('A'..'Z') + Array('a'..'z') + Array(' ')    
    
    1000.times do
      size = 2 + rand(100)
      arr = Array.new(size)
      string = arr.map{|x| chars.sample }.join
      if(rand(3) == 2)
        string = string_shuffle_and_capitalize((?a..?z).to_a.join)
      end
      expect(pangram?(string.dup)).to eq(tst?(string)), string + " is" + (tst?(string) ? "" : " not") + " a pangram"
    end
  end
end