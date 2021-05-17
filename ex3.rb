require 'time'

def input
  date=""
  loop do
    begin
      p "Enter the date: "
      date = Time.strptime(gets,"%d/%m/%Y")
      if date > Time.now
        p "The time is later than now ! Enter again"
        next
      end
    rescue ArgumentError
      p "Invalid date ! Enter again"
      next
    else
      break
    end
  end
  date
end

def vacation
  in_day = input
  now  = Time.now
  day = 0
  if in_day.year != now.year
    case ((now - in_day ) / (3600 * 24 * 365)).floor
      when 0..3
        day = 12
      when 4
        day = 13
      else
        day = 15
    end
  else
    in_day.day < 10 ? day = 12 - in_day.month + 1 : day = 12 - in_day.month + 0.5
  end
  day
end

p vacation


