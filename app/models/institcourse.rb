class Institcourse < ActiveRecord::Base
	#attr_accessible :institution_id, :coursename_id

	belongs_to   :institution
	belongs_to   :coursename
end
