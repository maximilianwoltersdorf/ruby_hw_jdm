class UsersController < ApplicationController
  
  def login
    @title = "Login"
  end

  def logout
    @title = "Logout"
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  
  def signup
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Wilkommen bei Portalspass!"
      redirect_to @user
    else
      @title = "Sign up"
      render 'signup'
    end
  end

end
