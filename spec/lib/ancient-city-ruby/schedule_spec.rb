require "spec_helper"

describe AncientCityRuby::Schedule do
  describe ".print" do
    it "should print out the events_table" do
      AncientCityRuby::EventsTable::Printer.any_instance.should_receive(:print_table).with(AncientCityRuby::Schedule::SCHEDULE_DATA)

      AncientCityRuby::Schedule.print
    end
  end
end