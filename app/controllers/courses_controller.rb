class CoursesController < ApplicationController
  #before_action :signed_in_user,    only: [:index, :edit, :update, :destroy]
  #before_action :correct_user,      only: [:edit, :update, :destroy]
  #before_action :admin_user,      only: [:index, :edit, :update, :destroy]


def index
    @courses = Course.paginate(page: params[:page])
    @coursenames, @alphaParams = Coursename.all.alpha_paginate(params[:letter]){|coursename| coursename.name}
      end

def show
    @course = Course.find(params[:id])
end

def input
  end

def new
    @course = Course.new
    @coursename = Coursename.new
    @institution = Institution.new
    @all_coursename = Coursename.all
    @all_institution = Institution.all
  end

def create
     @course = Course.new course_params
  if @course.save
   #sign_in @course
    flash[:success] = "New Course Added!"
    redirect_to @course
  else
  render 'new'
  end

def edit
  @course = Course.find(params[:id])
  
end

def update
  @course = Course.find(params[:id])
 if @course.update_attributes(course_params)
flash[:success] = "Course updated"
redirect_to @course
else
render 'edit'
end
end

def destroy
Course.find(params[:id]).destroy
@course.destroy
flash[:success] = "Course deleted."
redirect_to course_url
  end
end
    

private
  def course_params
    params.require(:course).permit(:institutiontype, :institution, :ftpt,
          :duration, :dept, :coursename, :code, :description)
  end

# Before filters

def signed_in_user
  #unless signed_in?
  #store_location
  #redirect_to signin_url, notice: "Please sign in." 
  end
end

def correct_course
 # @course = Course.find(params[:id])
  #redirect_to(root_url) unless current_user?(@user)
  end


def admin_user
#redirect_to(root_url) unless current_user.admin?
  end

