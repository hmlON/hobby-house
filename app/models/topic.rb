class Topic < ApplicationRecord
  has_many :subscriptions
  has_many :users, through: :subscriptions
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
end
