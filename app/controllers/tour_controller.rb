class TourController < ApplicationController
  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new(tour_params)
    @tour.user_id = current_user.id if current_user
    if @tour.save
      flash[:success] = "Saving Tour" + @tour.title
      redirect_to "/calendar"
    else
      render "new"
    end
  end

  def edit
    @tour = Tour.find(params[:id])
  end

  def update
    @tour = Tour.find(params[:id])
    if @tour.update_attributes(tour_params)
      flash[:success] = "Saving Tour: " + @tour.title
      redirect_to "/calendar"
    else
      render "edit"
    end
  end

  def destroy
    Tour.find(params[:id]).destroy
    flash[:success] = "Tour deleted"
    redirect_to "/calendar"
  end

  def tour_params
    params.require(:tour).permit(:title, :start_date, :end_date)
  end
end
