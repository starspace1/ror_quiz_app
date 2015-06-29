class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user
      if user.authenticate(params[:password])
        session[:user] = params[:email] # I still don't really understand the session[] magic
        redirect_to root_path
      end
    end
  end

  def destroy
    session[:user] = nil
    redirect_to root_path
  end
end
