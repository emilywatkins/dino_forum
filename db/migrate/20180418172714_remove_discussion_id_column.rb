class RemoveDiscussionIdColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :discsussion_id
  end
end
