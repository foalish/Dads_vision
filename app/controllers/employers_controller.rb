class EmployersController < ApplicationController
  def new
  end

   def input
  end

  def show
     @employer = Employer.find(params[:id])
  end

  def new
  	@employer = Employer.new
  end
end
