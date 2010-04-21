# encoding: utf-8

class PostsController < ApplicationController
  before_filter :find_blog
  before_filter :find_post, :except => [:new, :create]
  
  respond_to :html
  
  def new
    @post = @blog.posts.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  {render :xml => @post }
    end
  end

  def create
    @post = @blog.posts.build(params[:post])
    flash[:notice] = 'Artikkeli luotiin onnistuneesti' if @post.save
    respond_with(@post, :location => blog_path(@blog))
  end

  def show
    @comments = @post.comments
    
    respond_to do |format| 
      format.html # show.html.erb  
      format.xml { render :xml => @post } 
     end 
  end

  def destroy 
    @post.destroy 

    respond_to do |format| 
      format.html { redirect_to(posts_url) } 
      format.xml { head :ok } 
    end 
  end

  def edit
  end

  def update 
    respond_to do |format| 
      if @post.update_attributes(params[:post])  
        format.html { redirect_to(@post,  :notice => 'Post was successfully updated.') } 
        format.xml { head :ok } 
      else  
        format.html { render :action => "edit" } 
        format.xml { render :xml => @post.errors,  :status => :unprocessable_entity } 
      end  
    end 
  end 

  private
    def find_blog
      @blog = Blog.find(params[:blog_id])
    end
    
    def find_post
      @post = @blog.posts.find(params[:id])
    end
end
