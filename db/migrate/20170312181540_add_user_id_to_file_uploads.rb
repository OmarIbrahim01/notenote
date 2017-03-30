class AddUserIdToFileUploads < ActiveRecord::Migration[5.0]
  def change
  	add_column :file_uploads, :user_id, :integer
  end
end
