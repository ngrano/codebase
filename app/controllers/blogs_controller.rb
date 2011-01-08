# encoding: UTF-8

class BlogsController < ApplicationController
  def show
    @blog = Blog.find(params[:id], :include => :posts)
  end
end
