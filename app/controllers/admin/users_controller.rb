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
end
