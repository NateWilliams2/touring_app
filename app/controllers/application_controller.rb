class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :format_date, :format_time, :get_shows, :get_tour_show_income, :get_tour_merch_income,
                :get_members

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

  #function to get ordered list of members from a tour
  def get_members(tourid)
    return Member.where("tour_id = '" + tourid.to_s + "'").order("musician").reverse_order
  end

  #function to calculate the total income from a tour's shows
  def get_tour_show_income(tourid)
    sum = 0
    for show in get_shows(tourid)
      sum += show.pay
    end
    return sum
  end

  #function to calculate the total income from a tour's merch sales
  def get_tour_merch_income(tourid)
    sum = 0
    for show in get_shows(tourid)
      sum += show.expected_merch
    end
    return sum
  end
end
