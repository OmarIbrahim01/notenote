class WelcomeController < ApplicationController
	
  def unsigned_index
  end

  def signed_index
  @note = Note.where(user_id: current_user).order("created_at DESC")
	@todo_lists = TodoList.where(user_id: current_user).order("created_at DESC")
	@documents = Document.where(user_id: current_user).order("created_at DESC")
  @file_uploads = FileUpload.where(user_id: current_user).order("created_at DESC")
  @current_page = request.original_url
  end

  def add_new_object
  end

end
