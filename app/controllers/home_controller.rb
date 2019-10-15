class HomeController < ApplicationController
  def home
    quotation = Quotation.order("RANDOM()").first
    @text = quotation.quote
    @author = quotation.author
  end
end
