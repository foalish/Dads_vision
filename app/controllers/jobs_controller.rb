class JobsController < ApplicationController
  def new
  end

   def input
  end

  def show
     @job = Job.find(params[:id])
  end

  def new
  	@job = Job.new
  end
end
