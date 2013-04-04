module AncientCityRuby
  class DrawingEntry
    ENTRY_URL = "http://pivotal-tracker-drawing.herokuapp.com/entries"

    def self.create!(email)
      uri = URI(ENTRY_URL)
      res = Net::HTTP.post_form(uri, "entry[email]" => email)
      JSON.parse(res.body)["message"]
    end
  end
end