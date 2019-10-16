require "rails_helper"

RSpec.describe BandController, type: :controller do
  describe "band_controller" do
    context "when the user visits the band page" do
      it "renders the band page" do
        get :band
        expect(response).to render_template :band
      end
    end
  end
end
