class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      'first_name' => params[:first_name],
      'last_name' => params[:last_name],
      'description' => params[:description],
      'age' => params[:age],
      'email' => params[:email],
      'password' => params[:password],
      'password_confirmation' => params[:password_confirmation]
    )
    if @user.save
      log_in(@user)
      redirect_to root_path, alert: "You registered successfully!"
    else
      flash.now[:danger] = "Invalid fields"
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end