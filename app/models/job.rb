class Job < ActiveRecord::Base

def self.search(search)
	search_condition = "%" + search + "%"
	find(:all, :conditions => ['jobcategory LIKE ?', search_condition])
end
end
