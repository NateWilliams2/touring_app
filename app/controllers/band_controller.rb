class BandController < ApplicationController
  def band
    @tours = Tour.order("start_date").all
  end
end
