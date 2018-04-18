class AddDiscussionId < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :discsussion_id, :integer
  end
end
