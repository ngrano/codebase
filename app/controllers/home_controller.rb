# encoding: utf-8

class HomeController < ApplicationController
  
  # Lists all blogs' recent posts
  # 
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb  
      format.xml { render :xml => @posts } 
    end
  end  
  
  def about
    # views/home/about.html.erb
  end
  
  # TODO: Move this to metal
  def admin
    if user_signed_in?
      redirect_to user_root_path
    else
      redirect_to new_user_session_path
    end
  end
end
