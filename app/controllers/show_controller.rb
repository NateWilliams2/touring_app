class ShowController < ApplicationController
  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      flash[:success] = "Saving Show in " + @show.address.city
      redirect_to "/calendar"
    else
      render "new"
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update_attributes(show_params)
      flash[:success] = "Saving Show in " + @show.address.city
      redirect_to "/calendar"
    else
      render "edit"
    end
  end

  def destroy
    Show.find(params[:id]).destroy
    flash[:success] = "Show deleted"
    redirect_to "/calendar"
  end

  def show_params
    params.require(:show).permit(:tour_id, :description, :pay, :date,
                                 :load_in, :set, :lodging, :expected_merch, :wifi_net, :wifi_pw,
                                 :laundry, :showers, :contact_name, :contact_email,
                                 :contact_number, :venue_website, :address_attributes => [:id, :state, :city, :street, :number])
  end
end
