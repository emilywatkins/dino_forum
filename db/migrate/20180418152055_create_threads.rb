class CreateThreads < ActiveRecord::Migration[5.2]
  def change
    create_table :threads do |t|
      t.column :description, :string

      t.timestamps
    end
  end
end
