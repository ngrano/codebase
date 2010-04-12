class Admin::UsersController < ApplicationController
  respond_to :html

  before_filter :authenticate_user!

  layout 'admin'

  def index
    respond_with(@users = User.order('name'))
  end

  def show
    respond_with(@user = User.find(params[:id]))
  end
  
  def update
    @user = User.find(params[:id])
    
    if @user.update_attributes(params[:user])
      respond_with(@user, :location => admin_user_path)
    else
      respond_with(@user) do |format|
        format.html { render :action => :show, :id => @user.id }
      end
    end
  end
end
