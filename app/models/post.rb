class Post < ActiveRecord::Base
  MARKUP_LANGUAGES = ['Markdown', 'Textile', 'HTML']

  default_scope order('created_at DESC')

  validates :body,  :presence => true
  validates :markup, :presence => true
  validates :blog_id, :presence => true

  validates :title, :presence => true,
                    :uniqueness => true

  belongs_to :blog
  belongs_to :user
  has_many :comments, :dependent => :destroy
end
