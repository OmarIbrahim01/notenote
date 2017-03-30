class RemoveUserFromeFileUploads < ActiveRecord::Migration[5.0]
  def change
  	remove_column :file_uploads, :user
  end
end
