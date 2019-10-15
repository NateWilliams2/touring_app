module CalendarHelper
#Function to format dates for printing
  def format_date(date)
    return date.strftime("%A, %B %-d")
  end

  #function to format times for printing
  def format_time(time)
    return time.strftime("%l:%M%p")
  end

  #function to get ordered list of shows from a tour
  def get_shows(tourid)
    return Show.where("tour_id = '" + tourid.to_s + "'").order("date")
  end
end
