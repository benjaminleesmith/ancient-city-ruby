require "spec_helper"

describe AncientCityRuby::DrawingEntry do
  describe ".create!" do
    it "should post to the drawing web service" do
      mock_response = mock("response", body: "{}")
      Net::HTTP.should_receive(:post_form).with(anything, "entry[email]" => "bsmith@pivotallabs.com").and_return(mock_response)

      AncientCityRuby::DrawingEntry.create!("bsmith@pivotallabs.com")
    end

    it "returns the message" do
      mock_response = mock("response", body: "{\"message\":\"hi there!\"}")
      Net::HTTP.stub(:post_form).and_return(mock_response)

      AncientCityRuby::DrawingEntry.create!("bsmith@pivotallabs.com").should == 'hi there!'
    end
  end
end