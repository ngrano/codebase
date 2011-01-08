# encoding: UTF-8

class CommentsController < ApplicationController
  before_filter :find_post

  respond_to :html

  def new
    @comment = @post.comments.build
  end

  def create 
    @comment = @post.comments.build(params[:comment])
    flash[:notice] = 'Kommentti luotiin onnistuneesti' if @comment.save
    respond_with(@comment, :location => @post)
  end 

  def destroy 
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    respond_with(@comment, :location => @post)
  end

  private
    def find_post
      @post = Post.find(params[:post_id], :include => :blog)
    end
end
