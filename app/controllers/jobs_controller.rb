class JobsController < ApplicationController
 # has_mobile_fu
  


   def input
  end

  def show
    @job = Job.find(params[:id])
    end


def search
  @jobs = Job.search params[:search]
  @job = Job.find(params[:id])
end

  def new
  @job = Job.new
  end

 def index
  if params[:search]
      @jobs = Job.find(:all, :conditions => ['jobcategory LIKE ?', "%#{params[:search]}%"])
   else  
      @jobs = Job.find(:all)
  end
   # @jobs = Job.paginate(page: params[:page])
  #  @jobcategories, @alphaParams = Jobcategory.all.alpha_paginate(params[:letter]){|jobcategory| jobcategory.name}
 end

  def create

  @job = Job.new job_params 
  if @job.save
      flash[:success] = "New Job Added!"
    redirect_to @job
  else
  render 'new'
  end

 
def edit
  @job = Job.find(params[:id])
 end


def update
   @job = Job.find(params[:id])

if @job.update_attributes(job_params)
flash[:success] = "Job updated"
redirect_to @job
else
render 'edit'
end
end

def destroy
Job.find(params[:id]).destroy
 @job = Job.find(params[:id])
    @job.destroy
    respond_to do |format|
      format.html { redirect_to job_url, notice: 'Job was successfully DELETED.' }
      format.json { head :no_content }
  end
end
end

private
def job_params
params.require(:job).permit(:jobcategory, :description, :ftpt, :institution, :alevel, :gcse,
:coursename, :duration, :applicant, :place, :workexp)
end
end




