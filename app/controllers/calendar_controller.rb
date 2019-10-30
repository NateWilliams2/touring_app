class CalendarController < ApplicationController
  def calendar
    @tours = Tour.where(user_id: current_user).order("start_date").all
  end
end
