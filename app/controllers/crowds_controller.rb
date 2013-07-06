class CrowdsController < ApplicationController
  # GET /crowds
  # GET /crowds.json
  def index
    @crowds = Crowd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crowds }
    end
  end

  # GET /crowds/1
  # GET /crowds/1.json
  def show
    @crowd = Crowd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crowd }
    end
  end

  # GET /crowds/new
  # GET /crowds/new.json
  def new
    @crowd = Crowd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crowd }
    end
  end

  # GET /crowds/1/edit
  def edit
    @crowd = Crowd.find(params[:id])
  end

  # POST /crowds
  # POST /crowds.json
  def create
    @crowd = Crowd.new(params[:crowd])

    respond_to do |format|
      if @crowd.save
        format.html { redirect_to @crowd, notice: 'Crowd was successfully created.' }
        format.json { render json: @crowd, status: :created, location: @crowd }
      else
        format.html { render action: "new" }
        format.json { render json: @crowd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crowds/1
  # PUT /crowds/1.json
  def update
    @crowd = Crowd.find(params[:id])

    respond_to do |format|
      if @crowd.update_attributes(params[:crowd])
        format.html { redirect_to @crowd, notice: 'Crowd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crowd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crowds/1
  # DELETE /crowds/1.json
  def destroy
    @crowd = Crowd.find(params[:id])
    @crowd.destroy

    respond_to do |format|
      format.html { redirect_to crowds_url }
      format.json { head :no_content }
    end
  end
end
