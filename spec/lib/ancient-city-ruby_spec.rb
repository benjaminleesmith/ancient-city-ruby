require "spec_helper"

describe AncientCityRuby do
  describe ".print_schedule" do
    it "should print out the schedule" do
      Schedule::Printer.any_instance.should_receive(:print_schedule).with(AncientCityRuby::SCHEDULE_DATA)

      AncientCityRuby.print_schedule
    end
  end
end