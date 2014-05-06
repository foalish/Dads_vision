class SearchesController < ApplicationController
 #before_action :set_jobcategory, only: [:show, :edit, :update, :destroy]

  # GET /jobcategories
  # GET /jobcategories.json
  def index
    
end

  # GET /jobcategories/1
  # GET /jobcategories/1.json
  def search
  end

    def show
   # @jobcategory = Jobcategory.find(params[:id])
  end

  # GET /jobcategories/new
  def new
    @jobcategory = Jobcategory.new
  end

  # GET /jobcategories/1/edit
  def edit
  end

  # POST /jobcategories
  # POST /jobcategories.json
  def create
     if params[:search]
     @jobcategories = Jobcategory.find(:all, :conditions => ['name LIKE ?', "%#{params[:search_text]}%"])
    else  
     @jobcategories = Jobcategory.find(:all)
  # render "jobcategories/create"
     end
   end
  # PATCH/PUT /jobcategories/1
  # PATCH/PUT /jobcategories/1.json
  def update
    end

  # DELETE /jobcategories/1
  # DELETE /jobcategories/1.json
  def destroy
     end

  private
    # Use callbacks to share common setup or constraints between actions.
   
    # Never trust parameters from the scary internet, only allow the white list through.
    def jobcategory_params
      params.require(:jobcategory).permit(:name)
    end
end

  
 
