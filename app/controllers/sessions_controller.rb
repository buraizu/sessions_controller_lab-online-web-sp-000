class SessionsController < ApplicationController

  def new
    render 'new'
  end

  def create
    session[:name] = params[:name]
    
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
