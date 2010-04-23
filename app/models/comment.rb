class Comment < ActiveRecord::Base
  validates_presence_of :commenter, :body

  belongs_to :post, :counter_cache => true
end
