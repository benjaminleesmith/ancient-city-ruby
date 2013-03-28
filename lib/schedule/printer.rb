module Schedule
  class Printer
    def print_schedule(data)
      data.keys.each do |date|
        print_date(date)
        print_schedule_table(data[date])
      end
    end

    private
    def print_date(date)
      puts date.strftime("%A, %B %-d, %Y")
    end

    def print_schedule_table(time_slots)
      table = Terminal::Table.new do |t|
        time_slots.each do |time_slot|
          if time_slot.speaker.nil?
            t.add_row [format_time(time_slot.time), format_multi_column_data(time_slot.event_name)]
          else
            t.add_row [format_time(time_slot.time), format_single_column_data(time_slot.event_name), format_single_column_data(time_slot.speaker)]
          end
          t.add_row :separator unless time_slot == time_slots.last
        end
      end

      puts table.render
    end

    def format_time(time)
      {:value => time, :alignment => :center}
    end

    def format_single_column_data(event)
      {:value => event, :alignment => :center}
    end

    def format_multi_column_data(event)
      {:value => event, :colspan => 2, :alignment => :center}
    end
  end
end