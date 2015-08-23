class FishingController < ApplicationController
  # GET /fishing
  # GET /fishing.json
  def index

    @catches = Catch.all
    @users = User.all
    @fish_types = FishType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catches }
    end
  end

end
