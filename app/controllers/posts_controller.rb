# encoding: utf-8

class PostsController < ApplicationController
  before_filter :find_post, :except => :index
  before_filter :authenticate_user!, :only => [:edit, :update]

  respond_to :html

  def index
    @posts = Post.all
  end

  def show
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
    def find_post
      @post = Post.find(params[:id])
    end
end
