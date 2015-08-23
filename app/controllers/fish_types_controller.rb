class FishTypesController < ApplicationController
  # GET /fish_types
  # GET /fish_types.json
  def index
    @fish_types = FishType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fish_types }
    end
  end

  # GET /fish_types/1
  # GET /fish_types/1.json
  def show
    @fish_type = FishType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fish_type }
    end
  end

  # GET /fish_types/new
  # GET /fish_types/new.json
  def new
    @fish_type = FishType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fish_type }
    end
  end

  # GET /fish_types/1/edit
  def edit
    @fish_type = FishType.find(params[:id])
  end

  # POST /fish_types
  # POST /fish_types.json
  def create
    @fish_type = FishType.new(params[:fish_type])

    respond_to do |format|
      if @fish_type.save
        format.html { redirect_to @fish_type, notice: 'Fish type was successfully created.' }
        format.json { render json: @fish_type, status: :created, location: @fish_type }
      else
        format.html { render action: "new" }
        format.json { render json: @fish_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fish_types/1
  # PUT /fish_types/1.json
  def update
    @fish_type = FishType.find(params[:id])

    respond_to do |format|
      if @fish_type.update_attributes(params[:fish_type])
        format.html { redirect_to @fish_type, notice: 'Fish type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fish_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fish_types/1
  # DELETE /fish_types/1.json
  def destroy
    @fish_type = FishType.find(params[:id])
    @fish_type.destroy

    respond_to do |format|
      format.html { redirect_to fish_types_url }
      format.json { head :no_content }
    end
  end
end
