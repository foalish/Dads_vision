class Job < ActiveRecord::Base

def self.search(query)
		where("jobcategory like ?", "%#{query}%")
	end
end

