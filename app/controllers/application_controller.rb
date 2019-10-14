class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :format_date, :format_time

  def format_date(date)
    return date.strftime("%A, %B %-d")
  end

  def format_time(time)
    return time.strftime("%l:%M%p")
  end
end
