class FinancesController < ApplicationController
  def finances
    @tours = Tour.order("start_date").all
  end
end
