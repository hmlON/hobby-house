class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :comments

  acts_as_votable
end
