# encoding: UTF-8

class Admin::PostsController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html
  layout 'admin'

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    flash[:notice] = 'Artikkeli päivitettiin onnistuneesti' if @post.update_attributes(params[:post])
    respond_with(@post, :location => admin_posts_path)
  end

  def create
    @post = Post.new(params[:post])
    flash[:notice] = 'Artikkeli luotiin onnistuneesti' if @post.save
    respond_with(@post)
  end
end
