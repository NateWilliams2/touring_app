class StaticPagesController < ApplicationController
  def home
    quotation = Quotation.order("RANDOM()").first
    @text = quotation.quote
    @author = quotation.author
  end

  def finances
  end

  def calendar
    @shows = Show.order('date').all
  end

  def map
  end
end
