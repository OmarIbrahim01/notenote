class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def current_page
  	@current_page = request.original_url
	@current_page
  end
  
end
