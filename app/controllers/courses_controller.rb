class CoursesController < ApplicationController

  def home
  end

  def input
  end

  def show
     @course = Course.find(params[:id])
  end

  def new
  	@course = Course.new
  end
end
