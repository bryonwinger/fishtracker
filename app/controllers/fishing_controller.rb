class FishingController < ApplicationController
  # GET /fishing
  # GET /fishing.json
  def index

    @catches = Catch.all
    @users = User.all
    @fish_types = FishType.all

    respond_to do |format|
      format.html
      format.json { render json: @catches }
    end
  end

  def catch
    @notice_string = User.find(params[:user_id]).nickname + " caught a " + FishType.find(params[:fish_type_id]).name
    redirect_to({action: "index"}, alert: @notice_string.html_safe)
  end


end
