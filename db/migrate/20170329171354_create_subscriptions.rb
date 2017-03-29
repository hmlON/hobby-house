class CreateSubscriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :user, foreign_key: true, index: true
      t.belongs_to :topic, foreign_key: true, index: true

      t.timestamps
    end
  end
end
