require "spec_helper"

describe AncientCityRuby::EventsTable::Printer do
  describe "#print_table" do
    it "prints the date" do
      printer = AncientCityRuby::EventsTable::Printer.new

      printer.stub(:print_schedule_table)

      STDOUT.should_receive(:puts).with("Wednesday, April 3, 2013")

      printer.print_table({Date.new(2013, 4, 3) => []})
    end

    it "prints out events with speakers" do
      schedule_data = {
          Date.new => {
              columns: 3, events: [
                  AncientCityRuby::EventsTable::TimeSlot.new("10:00-10:45", "Advanced Ruby: Deconstructing a Mock Object Library", "Andy Lindeman")
              ]
          }
      }

      printer = AncientCityRuby::EventsTable::Printer.new

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with(
          "+-------------+-----------------------------------------------------+---------------+
| 10:00-10:45 | Advanced Ruby: Deconstructing a Mock Object Library | Andy Lindeman |
+-------------+-----------------------------------------------------+---------------+"
      )

      printer.print_table(schedule_data)
    end

    it "prints events that do not have speakers" do
      schedule_data = {
          Date.new => {
              columns: 2, events: [
                  AncientCityRuby::EventsTable::TimeSlot.new("8:00-9:00", "Breakfast and Socializing")
              ]
          }
      }

      printer = AncientCityRuby::EventsTable::Printer.new

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with(
"+-----------+---------------------------+
| 8:00-9:00 | Breakfast and Socializing |
+-----------+---------------------------+"
      )

      printer.print_table(schedule_data)
    end
  end
end