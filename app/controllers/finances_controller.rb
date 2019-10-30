class FinancesController < ApplicationController
  def finances
    @tours = Tour.where(user_id: current_user).order("start_date").all
  end
end
