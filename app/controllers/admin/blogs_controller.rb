class Admin::BlogsController < ApplicationController
  before_filter :authenticate_user!
  
  respond_to :html
  layout 'admin'
  
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end
  
  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(params[:blog])
    flash[:notice] = 'Blogi luotiin onnistuneesti' if @blog.save
    respond_with(@blog, :location => [:admin, @blog])
  end
  
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    flash[:notice] = 'Blogi poistettiin onnistuneesti'
    respond_with(:admin, @blog, :location => admin_blogs_path)
  end
end
