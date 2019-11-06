module FinancesHelper
  #function to calculate the total income from a tour's shows
  def get_tour_show_income(tourid)
    sum = 0
    for show in get_shows(tourid)
      if show.pay != nil
        sum += show.pay
      end
    end
    return sum
  end

  #function to calculate the total income from a tour's merch sales
  def get_tour_merch_income(tourid)
    sum = 0
    for show in get_shows(tourid)
      if show.expected_merch != nil
        sum += show.expected_merch
      end
    end
    return sum
  end

  #function to get ordered list of shows from a tour
  def get_shows(tourid)
    return Show.where("tour_id = '" + tourid.to_s + "'").order("date")
  end

  def get_total_member_pay(member, tourid, gross)
    if member.pay_by_percent
      return gross * member.pay / 100
    else
      return member.pay * get_shows(tourid).count
    end
  end

  def get_total_wage_expenses(tourid, gross)
    wage_expenses = 0
    for member in get_members(tourid)
      pay = get_total_member_pay(member, tourid, gross)
      wage_expenses += pay
    end
    return wage_expenses
  end
end
