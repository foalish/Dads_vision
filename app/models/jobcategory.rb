class Jobcategory < ActiveRecord::Base

	validates :name, :presence => true


	def self.search(query)
		where("name like ?", "%#{query}%")
	end
end
