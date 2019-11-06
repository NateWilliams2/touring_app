class MemberController < ApplicationController
  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:success] = "Saving Member: " + @member.name
      redirect_to "/band"
    else
      render "new"
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    if @member.update_attributes(member_params)
      flash[:success] = "Saving Member: " + @member.name
      redirect_to "/band"
    else
      render "edit"
    end
  end

  def member_params
    params.require(:member).permit(:tour_id, :name, :role, :pay, :phone_number, :pay_by_percent, :musician)
  end
end
