module ApplicationHelper
  # Returns the full title on a per-page basis. from Hartl tutorial ch4
  def full_title(page_title = "")
    base_title = "Touring Helper App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  #function to get ordered list of members from a tour
  def get_members(tourid)
    return Member.where("tour_id = '" + tourid.to_s + "'").order("musician").reverse_order
  end
end
