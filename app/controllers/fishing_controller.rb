class FishingController < ApplicationController
  # GET /fishing
  # GET /fishing.json
  def index

    flash.keep(:notice)
    @catches = Catch.all
    @users = User.all
    @fish_types = FishType.all


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @catches }
    end
  end

  def catch
    redirect_to action: 'index', notice: 'stuff to go here'
  end

end
