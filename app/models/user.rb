class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :subscriptions
  has_many :topics, through: :subscriptions
  has_many :created_topics, class_name: 'Topic', foreign_key: 'user_id'
  has_many :posts
  has_many :comments
end
