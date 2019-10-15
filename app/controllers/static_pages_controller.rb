class StaticPagesController < ApplicationController
  def home
    quotation = Quotation.order("RANDOM()").first
    @text = quotation.quote
    @author = quotation.author
  end

  def finances
    @tours = Tour.order("start_date").all
  end

  def calendar
    @tours = Tour.order("start_date").all
  end

  def map
    @tours = Tour.order("start_date").all
  end
end
