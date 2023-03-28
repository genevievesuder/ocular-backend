class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.text :image
      t.references :user, null: false, foreign_key: {on_delete: :cascade}

      t.timestamps
    end
  end
end
