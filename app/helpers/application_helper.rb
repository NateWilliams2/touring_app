module ApplicationHelper
    # Returns the full title on a per-page basis. from Hartl tutorial ch4
    def full_title(page_title = '')
      base_title = "Touring Helper App"
      if page_title.empty?
        base_title
      else
        page_title + " | " + base_title
      end
    end
  end
  