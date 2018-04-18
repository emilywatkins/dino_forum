class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.column :body, :string

      t.timestamps
    end
  end
end
