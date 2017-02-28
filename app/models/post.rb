class Post < ApplicationRecord
  belongs_to :user, :counter_cache => true
  has_many :comments
  validates :title, :body, presence: true
end
#TODO: add this somewhere (also for users), rather than having to do db:reset
#Post.find_each { |post| Post.reset_counters(post.id, :comments) }
