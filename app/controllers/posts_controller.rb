# encoding: utf-8

class PostsController < ApplicationController
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  {render :xml => @post }
    end
  end

  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to(@post,
                      :notice => 'Artikkeli lisätty onnistuneesti') }
        format.xml  { render :xml =>  @post,
                      :status => :created, :location => @post }
      else
        format.html { render :action => "new"  }
        format.xml  { render :xml => @post.errors,
                      :status => :unprocessable_entity  }
      end
    end
  end

  def show
    @post = Post.find(params[:id])  

    respond_to do |format| 
      format.html # show.html.erb  
      format.xml { render :xml => @post } 
     end 
  end

  def destroy
    @post = Post.find(params[:id])  
    @post.destroy 

    respond_to do |format| 
      format.html { redirect_to(posts_url) } 
      format.xml { head :ok } 
    end 
  end
end