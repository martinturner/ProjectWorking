module ApplicationHelper
		def header_active(controller_name, action_name)
		return "active" if controller_name == params[:controller] &&
				action_name == params[:action]
		return ""

	end 
end
