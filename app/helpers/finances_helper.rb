module FinancesHelper
  #function to calculate the total income from a tour's shows
  def get_tour_show_income(tourid)
    sum = 0
    for show in get_shows(tourid)
      sum += show.pay
    end
    return sum
  end

  #function to calculate the total income from a tour's merch sales
  def get_tour_merch_income(tourid)
    sum = 0
    for show in get_shows(tourid)
      sum += show.expected_merch
    end
    return sum
  end
end
