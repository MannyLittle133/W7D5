class CreateSubs < ActiveRecord::Migration[7.0]
  def change
    create_table :subs do |t|
      t.string :title, null: false
      t.text :description
      t.references :moderator, null: false, foreign_key: { to_table: :users}
      # t.integer :moderator_id, foreign_key: true
      t.timestamps
    end

    # add_index :subs, :moderator_id
  end
end
