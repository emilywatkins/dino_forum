class AddIsFeatured < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :is_featured, :boolean
  end
end
