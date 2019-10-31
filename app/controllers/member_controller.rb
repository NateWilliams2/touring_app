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

  def member_params
    params.require(:member).permit(:tour_id, :name, :role, :pay, :phone_number, :pay_by_percent, :musician)
  end
end
