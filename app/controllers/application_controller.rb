class ApplicationController < ActionController::Base

  include SessionsHelper

  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to log_url 
    end
  end
  
  def counts(user)
    @count_microposts = user.microposts.count
    @current_followings = user.followings.count
    @current_followers = user.followers.count
  end
end
