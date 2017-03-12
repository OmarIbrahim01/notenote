class AddUserToFileUpload < ActiveRecord::Migration[5.0]
  def change
    add_column :file_uploads, :user, :refrences
  end
end
