class Coursename < ActiveRecord::Base
	

	validates :name, :presence => true

	has_many  :institcourses
	has_many  :institutions, :through => :institcourses
end
