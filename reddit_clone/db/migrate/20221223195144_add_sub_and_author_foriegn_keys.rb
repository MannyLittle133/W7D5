class AddSubAndAuthorForiegnKeys < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :sub, foreign_key: true
    add_reference :p

  end
end
