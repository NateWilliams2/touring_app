require "rails_helper"

RSpec.describe FinancesController, type: :controller do
  describe "financesController" do
    context "when the user visits the finances page" do
      it "renders the finances page" do
        get :finances
        expect(response).to render_template :finances
      end
    end
  end
end
