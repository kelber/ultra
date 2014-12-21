module ApplicationHelper

		def tipo(type)
		case type
		when :success then "success"
		when :error   then "warning"
		when :alert   then "warning"
		when :notice  then " "
		else "info"
		end
	end



	def full_name
			" ( " "#{current_admin.name}"  " ) "
	end



end
