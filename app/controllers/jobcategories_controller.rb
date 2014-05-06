class JobcategoriesController < ApplicationController
 #before_action :set_jobcategory, only: [:show, :edit, :update, :destroy]

  # GET /jobcategories
  # GET /jobcategories.json
  def index
    if params[:search]
      @jobcategories = Jobcategory.find(:all, :conditions => ['name LIKE ?', "%#{params[:search]}%"])
    else  
      @jobcategories = Jobcategory.find(:all)
   # @jobcategories, @alphaParams = Jobcategory.all.alpha_paginate(params[:letter]){|jobcategory| jobcategory.name}
  end
end
  # GET /jobcategories/1
  # GET /jobcategories/1.json
  def show
    @jobcategory = Jobcategory.find(params[:id])
  end
  # GET /jobcategories/new
  def new
    @jobcategory = Jobcategory.new
  end
  # GET /jobcategories/1/edit
  def edit
    @jobcategory = Jobcategory.find(params[:id])
  end
  # POST /jobcategories
  # POST /jobcategories.json
  def create
    @jobcategory = Jobcategory.new(jobcategory_params)
    respond_to do |format|
      if @jobcategory.save
        format.html { redirect_to @jobcategory, notice: 'Jobcategory was successfully created.' }
        format.json { render action: 'show', status: :created, location: @jobcategory }
      else
        format.html { render action: 'new' }
        format.json { render json: @jobcategory.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /jobcategories/1
  # PATCH/PUT /jobcategories/1.json
  def update

    @jobcategory = Jobcategory.find(params[:id])
    
    respond_to do |format|
      if @jobcategory.update(jobcategory_params)
        format.html { redirect_to @jobcategory, notice: 'Jobcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @jobcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobcategories/1
  # DELETE /jobcategories/1.json
  def destroy
    @jobcategory.destroy
    respond_to do |format|
      format.html { redirect_to jobcategorys_url }
      format.json { head :no_content }
    end
  end

  private
      def jobcategory_params
      params.require(:jobcategory).permit(:name)
    end
   end
