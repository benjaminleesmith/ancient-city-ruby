module AncientCityRuby
  module EventsTable
    class TimeSlot
      attr_accessor :time, :event_name, :speaker

      def initialize(time, event_name, speaker = nil)
        self.time = time
        self.event_name = event_name
        self.speaker = speaker
      end
    end
  end
end