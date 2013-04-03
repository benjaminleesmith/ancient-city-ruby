require "spec_helper"

describe AncientCityRuby::Drinkups do
  describe ".print" do
    it "should print out the drinkups" do
      AncientCityRuby::EventsTable::Printer.any_instance.should_receive(:print_table).with(AncientCityRuby::Drinkups::DRINKUPS_DATA)

      AncientCityRuby::Drinkups.print
    end
  end
end