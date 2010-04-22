class Blog < ActiveRecord::Base
  validates_presence_of :name, :alias
  has_many :posts, :dependent => :destroy
end
