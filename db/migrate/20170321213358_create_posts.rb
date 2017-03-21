class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :topic, foreign_key: true
      t.text :text
      t.string :title

      t.timestamps
    end
  end
end
