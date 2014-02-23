class Search < ActiveRecord::Base
  def courses
    @courses ||= find_courses
  end
  
private
  def find_courses
    courses = Course.order(:name)
    courses = courses.where("name like ?", "%#{keywords}%") if keywords.present?
    courses = courses.where(institution_id: institution_id) if institution_id.present?
    courses = courses.where(coursename_id: coursename_id)   if coursename_id.present?    
    courses
  end
end


