class SearchesController < ApplicationController
	def new
		@search = Search.new
    end

    def create
   		Search.Create!(search_params)
   		redirect_to @search 
    end
  
  	def show
    	@search = Search.find(params[:id])
  	end
end    
