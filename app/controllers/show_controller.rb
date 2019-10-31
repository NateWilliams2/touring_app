class ShowController < ApplicationController
  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      flash[:success] = "Saving Show on" + @show.date.to_s
      redirect_to "/calendar"
    else
      render "new"
    end
  end

  def show_params
    params.require(:show).permit(:tour_id, :description, :pay, :date,
                                 :load_in, :set, :lodging, :expected_merch, :wifi_net, :wifi_pw,
                                 :laundry, :showers, :contact_name, :contact_email,
                                 :contact_number, :venue_website)
  end
end
