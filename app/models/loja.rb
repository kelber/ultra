class Loja < ActiveRecord::Base


	belongs_to :cidade


		def to_param
		"#{id}-#{name}"
	end
	
end
