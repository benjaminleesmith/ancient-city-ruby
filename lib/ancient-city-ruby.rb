require "date"
require "terminal-table"
require "schedule/printer"
require "schedule/time_slot"
require "ancient-city-ruby/drawing_entry"

class AncientCityRuby
  SCHEDULE_DATA = {
      Date.new(2013, 4, 3) => {
          columns: 2,
          events: [
              Schedule::TimeSlot.new("7:00-9:00", "Registration and Socializing")
          ]
      },
      Date.new(2013, 4, 4) => {
          columns: 3,
          events: [
              Schedule::TimeSlot.new("8:00-9:00", "Breakfast and Registration"),
              Schedule::TimeSlot.new("9:00-9:45", "Insight, Intuition and Programming", "Russ Olsen"),
              Schedule::TimeSlot.new("9:45-10:00", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("10:00-10:45", "Test Driven Development: A Love Story", "Nell Shamrell"),
              Schedule::TimeSlot.new("10:45-11:00", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("11:00-11:30", "Break"),
              Schedule::TimeSlot.new("11:30-12:15", "Impressive Ruby Productivity with Vim and Tmux", "Chris Hunt"),
              Schedule::TimeSlot.new("12:15-1:30", "Lunch"),
              Schedule::TimeSlot.new("1:30-2:15", "Better Testing with Given/When/Then", "Jim Weirich"),
              Schedule::TimeSlot.new("2:15-2:30", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("2:30-3:15", "Distributed Patterns in Ruby", "Eric Redmond"),
              Schedule::TimeSlot.new("3:15-3:30", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("3:30-4:00", "Break"),
              Schedule::TimeSlot.new("4:00-4:45", "How to Fail at Background Jobs", "Jacob Burkhart"),
              Schedule::TimeSlot.new("Evening", "> AncientCityRuby::Drinkups.print")
          ]
      },
      Date.new(2013, 4, 5) => {
          columns: 3,
          events: [
              Schedule::TimeSlot.new("8:00-9:00", "Breakfast and Registration"),
              Schedule::TimeSlot.new("9:00-9:45", "This is Your Brain on Software", "Paolo Perrotta"),
              Schedule::TimeSlot.new("9:45-10:00", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("10:00-10:45", "Advanced Ruby: Deconstructing a Mock Object Library", "Andy Lindeman"),
              Schedule::TimeSlot.new("10:45-11:00", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("11:00-11:30", "Break"),
              Schedule::TimeSlot.new("11:30-12:15", "Live Coding with Ben", "Ben Orenstein"),
              Schedule::TimeSlot.new("12:15-1:30", "Lunch"),
              Schedule::TimeSlot.new("1:30-2:15", "Magic Tricks of Testing", "Sandi Metz"),
              Schedule::TimeSlot.new("2:15-2:30", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("2:30-3:15", "Pairing is Caring", "Avdi Grimm"),
              Schedule::TimeSlot.new("3:15-3:30", "Lightning Talks", "TBA"),
              Schedule::TimeSlot.new("3:30-4:00", "Break"),
              Schedule::TimeSlot.new("4:00-4:45", "Hacking with Gems", "Benjamin Smith"),
          ]
      }
  }

  def self.print_schedule
    printer = Schedule::Printer.new
    printer.print_schedule(SCHEDULE_DATA)
    true
  end
end

module Ancient
  module City
    module Ruby
      # Your code goes here...
    end
  end
end
