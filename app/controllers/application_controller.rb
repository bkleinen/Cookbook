class ApplicationController < ActionController::Base
  protect_from_forgery

    @title = "Title not set"
    @header = "Header not set"

  helper_method :current_user_session, :current_user
  protected
  def current_user_session
    @current_user_session = UserSession.find
  end
  def current_user
    current_user ||= current_user_session && current_user_session.user
  end
end
