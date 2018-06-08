module FormatHelper

  DATE_FORMAT = "%s"
  DATE_TIME_FORMAT = "%s <span class=\"small time\">%s</span>"

  def format_date_time(timestamp, include_time = true)
    format(include_time ? DATE_TIME_FORMAT : DATE_FORMAT, timestamp.to_date.to_formatted_s(:long_ordinal), timestamp.strftime("%I:%M %p")).html_safe
  end
  
end
