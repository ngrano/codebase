class Admin::PostsController < ApplicationController
  before_filter :authenticate_user!, :find_blog

  respond_to :html
  layout 'admin'

  def new
    @post = @blog.posts.build
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = @blog.posts.build(params[:post])
    flash[:notice] = 'Artikkeli luotiin onnistuneesti' if @post.save
    respond_with(@post)
  end

  private
    def find_blog
      @blog = Blog.find(params[:blog_id])
    end
end
