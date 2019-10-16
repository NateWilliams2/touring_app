require "rails_helper"

RSpec.describe HomeController, type: :controller do
  describe "homeController" do
    context "when the user visits the home page" do
      it "renders the home page" do
        get :home
        expect(response).to render_template :home
      end
    end
  end
end
