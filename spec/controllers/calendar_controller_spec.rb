require "rails_helper"

RSpec.describe CalendarController, type: :controller do
  describe "calendarController" do
    before (:all) do
      @base_title = " | Touring Helper App"
    end
    context "when the user visits the calendar page" do
      it "renders the calendar page" do
        get :calendar
        expect(response).to render_template :calendar
      end
    end
  end
end
