class AddDiscussionIdColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :discussion_id, :integer
  end
end
