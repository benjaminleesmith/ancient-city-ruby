require "spec_helper"

describe Schedule::Printer do
  describe "#print_data" do
    it "prints the date" do
      printer = Schedule::Printer.new

      printer.stub(:print_schedule_table)

      STDOUT.should_receive(:puts).with("Wednesday, April 3, 2013")

      printer.print_schedule({Date.new(2013, 4, 3) => []})
    end

    it "prints out events with speakers" do
      schedule_data = {
          Date.new => {
              columns: 3, events: [
                  Schedule::TimeSlot.new("10:00-10:45", "Advanced Ruby: Deconstructing a Mock Object Library", "Andy Lindeman")
              ]
          }
      }

      printer = Schedule::Printer.new

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with(
          "+-------------+-----------------------------------------------------+---------------+
| 10:00-10:45 | Advanced Ruby: Deconstructing a Mock Object Library | Andy Lindeman |
+-------------+-----------------------------------------------------+---------------+"
      )

      printer.print_schedule(schedule_data)
    end

    it "prints events that do not have speakers" do
      schedule_data = {
          Date.new => {
              columns: 2, events: [
                  Schedule::TimeSlot.new("8:00-9:00", "Breakfast and Socializing")
              ]
          }
      }

      printer = Schedule::Printer.new

      printer.stub(:print_date)

      STDOUT.should_receive(:puts).with(
"+-----------+---------------------------+
| 8:00-9:00 | Breakfast and Socializing |
+-----------+---------------------------+"
      )

      printer.print_schedule(schedule_data)
    end
  end
end