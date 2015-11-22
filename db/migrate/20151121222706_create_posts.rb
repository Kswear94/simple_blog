class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :entry

      t.timestamps null: false
    end
  end
end
