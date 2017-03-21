class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text
      t.belongs_to :User, foreign_key: true
      t.belongs_to :Topic, foreign_key: true

      t.timestamps
    end
  end
end
