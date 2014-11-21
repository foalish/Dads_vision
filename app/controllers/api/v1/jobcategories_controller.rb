module API
	module V1
		class JobcategoriesController < ApplicationController
			def index
				Jobcategories = Jobcategory.all
				render json: jobcategies, status: 200
			end
			def show
				jobcategory = Jobcategory.find(params[:id])
				render json: jobcategory, status: 200
			end

		end
	end
end
