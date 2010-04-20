class CommentsController < ApplicationController
  before_filter :find_post

  def new
    @comment = @post.comments.build
  end

  def create 
    @comment = @post.comments.create(params[:comment])
    redirect_to [@post.blog, @post]
  end 

  def destroy 
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to [@post.blog, @post]
  end

  private
    def find_post
      @post = Post.find(params[:post_id], :include => :blog)
    end
end
