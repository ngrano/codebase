class Blog < ActiveRecord::Base
  validates_presence_of :name, :alias
  has_many :posts, :order => "created_at DESC", :dependent => :destroy
end
