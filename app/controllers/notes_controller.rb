class NotesController < ApplicationController

	before_action :find_notes, only: [:show, :edit, :update, :destroy]
	
	def index
		@note = Note.where(user_id: current_user).order("created_at DESC")
		@todo_lists = TodoList.where(user_id: current_user).order("created_at DESC")
	end

	def show
	end

	def new
		@note = current_user.notes.build
	end

	def create
		@note = current_user.notes.build(note_params)

		if @note.save
			redirect_to notes_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @note.update(note_params)
			redirect_to notes_path
		else
			render 'edit'
		end
	end

	def destroy
		@note.destroy
		redirect_to notes_path
	end

	private

	def find_notes
		@note = Note.find(params[:id])
	end

	def note_params
		params.require(:note).permit(:title, :content)
	end
end
