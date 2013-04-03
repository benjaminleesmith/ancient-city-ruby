module AncientCityRuby
  class Drinkups
    DRINKUPS_DATA = {
        Date.new(2013, 4, 4) => {
            columns: 3,
            events: [
                AncientCityRuby::EventsTable::TimeSlot.new("OPTION 1", "Satellite Black Raven Pirate Ship Adventure", "Full"),
                AncientCityRuby::EventsTable::TimeSlot.new("OPTION 2", "Onlife Health Creepy Pub Crawl (ages 21+)", "tinyurl.com/brafw8g")
            ]
        },
    }

    def self.print
      printer = AncientCityRuby::EventsTable::Printer.new
      printer.print_table(DRINKUPS_DATA)
      true
    end
  end
end