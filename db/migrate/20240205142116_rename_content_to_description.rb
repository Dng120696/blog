class RenameContentToDescription < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :content, :description
  end
end
