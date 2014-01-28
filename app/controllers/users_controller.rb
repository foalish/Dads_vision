class UsersController < ApplicationController

  def show
     @user = User.find(params[:id])
  end

 def input
  end

  def new
  	@course = Course.new
  end


end



