class Admin::UsersController < ApplicationController
  before_filter :authenticate_user!

  layout 'admin'

  def index
    @users = User.order('name')
  end
end
