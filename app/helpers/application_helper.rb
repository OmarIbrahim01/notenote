module ApplicationHelper

	def current_page
		@current_page = request.original_url
		@current_page
	end

end
