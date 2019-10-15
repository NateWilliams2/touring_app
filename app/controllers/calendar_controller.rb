class CalendarController < ApplicationController
  def calendar
    @tours = Tour.order("start_date").all
  end
end
