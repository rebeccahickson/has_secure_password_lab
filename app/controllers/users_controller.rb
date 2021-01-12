class UsersController < ApplicationController
  def new; end

  def create
    redirect_to '/users/new' if params[:user][:password] != params[:user][:password_confirmation]
    User.create(name: params[:user][:name], password: params[:user][:password])
    session[:user_id] = User.last.id
  end
end
