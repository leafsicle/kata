require_relative "../title_case" 

RSpec.describe "title_case method can sanitize input properly" do
    context "with no minor_words" do
      it "should return a blank string if nil or blank string" do
        expect(title_case("")).to eq("")
        expect(title_case(nil)).to eq("")
      end
      it "should capitalize each word " do
        expect(title_case("the quick brown fox jumped over the lazy dog")).to eq("The Quick Brown Fox Jumped Over The Lazy Dog")
        expect(title_case("so long and thanks for all the fish")).to eq("So Long And Thanks For All The Fish")
      end
    end

    context "with minor_words" do
      it "should selectively capitalize words" do
        expect(title_case("THE WIND IN THE WILLOWS","The In")).to eq("The Wind in the Willows")
        expect(title_case("a clash of KINGS","a an the of")).to eq("A Clash of Kings")
        expect(title_case("take all your GOLFclubs And rearrange their Grips","golfclubs and your")).to eq("Take All your golfclubs and Rearrange Their Grips")
      end
      it "partially matched minor_words are not returned" do
        expect(title_case("First a of in",'an often into')).to eq("First A Of In") 
        expect(title_case("Let that sink in as often as PoSSIBLE",'an often into asinine thatch Lettuce')).to eq("Let That Sink In As often As Possible") 
      end
  end
end