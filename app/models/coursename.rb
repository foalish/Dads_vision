class Coursename < ActiveRecord::Base
	#attr_accessible :name, :coursename_id

	validates :name, :presence => true

	has_many  :institcourses
	has_many  :institutions, :through => :institcourses
end
