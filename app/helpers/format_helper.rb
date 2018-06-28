module FormatHelper

  DATE_FORMAT = "%s"
  DATE_TIME_FORMAT = "%s <span class=\"small time\">%s</span>"

  def format_date_time(timestamp, include_time = true)
    format(include_time ? DATE_TIME_FORMAT : DATE_FORMAT, timestamp.to_date.to_formatted_s(:long_ordinal), timestamp.strftime("%I:%M %p")).html_safe
  end
  
  def format_due_date(timestamp)
    due_date = (timestamp.to_date - Date.today).to_i
    if due_date == 0
      "Today"
    elsif due_date == -1
      "Yesterday"
    elsif due_date < -1
      "#{due_date * -1} days ago"
    elsif due_date == 1
      "Tomorrow"
    elsif due_date > 1
      "in #{due_date} days"
    else
      "n/a"
    end
  end
  
end
