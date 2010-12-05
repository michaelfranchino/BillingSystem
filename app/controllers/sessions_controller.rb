class SessionsController < ApplicationController
  
  def new
    session[:env_referer] = request.env['HTTP_REFERER']
  end

  def create
    user = User.authenticate(params[:login], params[:password])
    if user
      session[:user_id] = user.id
      flash[:notice] = "Logged in successfully."
      redirect_to session[:env_referer]
    else
      flash.now[:error] = "Invalid login or password."
      render :action => 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You have been logged out."
    redirect_to request.env['HTTP_REFERER']
  end
  
end