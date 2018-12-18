class SessionsController < ApplicationController

  def new
    render 'new'
  end

  def create
    if params[:name].present?
      session[:name] = params[:name]
    else
      redirect_to "/login"

  end

  def destroy
    session.delete :name
    redirect_to '/'
  end

end
