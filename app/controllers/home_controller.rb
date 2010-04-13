class HomeController < ApplicationController
  def index
    # views/home/index.html.erb
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
