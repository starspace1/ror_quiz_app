class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  private
  def require_login
    user = User.find_by(email: params[:email])
    unless user && user.authenticate(params[:password])
      session[:user] = params[:email] # I still don't really understand the session[] magic
      flash[:error] = "Please Log In To access this"
      redirect_to root_url
    end
  end

  def current_user
    @_current_user ||= session[:current_user_id] && User.find_by(id: session[:current_user_id])
  end
end
