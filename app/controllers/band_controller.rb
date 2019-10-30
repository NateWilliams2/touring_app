class BandController < ApplicationController
  def band
    @tours = Tour.where(user_id: current_user).order("start_date").all
  end
end
