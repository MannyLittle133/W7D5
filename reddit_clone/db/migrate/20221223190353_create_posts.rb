class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :url
      t.text :content

      t.timestamps
    end
    add_index :posts, :title
  end
end
