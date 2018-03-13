class AddIndexToPostTitle < ActiveRecord::Migration[5.1]
  def change
    add_index :posts, :title, unique: true
  end
end
