class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name].nil?
      if !params[:name].empty?
        session[:name] = params[:name]
      end
    end
    if session[:name]
      redirect_to '/'
    else
      redirect_to sessions_new_path
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
