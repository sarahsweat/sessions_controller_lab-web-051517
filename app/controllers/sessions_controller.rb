class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    return redirect_to '/sessions/new' if !session[:name] || session[:name].empty?
    redirect_to '/'
  end

  def destroy
    session.delete :name
    redirect_to '/application/hello'
  end
end
