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

end
