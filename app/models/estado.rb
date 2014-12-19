class Estado < ActiveRecord::Base

	has_many :cidades


	def to_param
		"#{id}-#{name}"
	end


end
