class UsersController < ApplicationController
  def index 
  @users = User.all
  render template: "users/index"
  end

  def show
  @user = User.find_by(id: params[:id])
  render template: "users/show"
  end

  def new
    @user = User.new
    render template: "users/new"
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      weight: params[:user][:weight],
      height: params[:user][:height],
      email: params[:user][:email],
      password_digest: params[:user][:password_digest],
    )
    @user.save
    redirect_to "/users"
  end

  def edit
    @user = User.find_by(id: params[:id])
    render template: "users/edit"
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:user][:name]
    @user.weight = params[:user][:weight]
    @user.height = params[:user][:height]
    @user.email = params[:user][:email]
    @user.password_digest = params[:user][:password_digest]
    @user.save
    redirect_to "/users"
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to "/users", status: :see_other
  end
end
