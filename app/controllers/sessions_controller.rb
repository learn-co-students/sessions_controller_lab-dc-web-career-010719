class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    # byebug
    if session[:name] == nil || session[:name] == ''
      redirect_to login_path
    else
      redirect_to '/'
    end
  end

  def destroy
      session[:name] = nil
      redirect_to login_path
  end

end
