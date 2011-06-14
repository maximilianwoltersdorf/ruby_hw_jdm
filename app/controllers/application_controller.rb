class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def after_sign_in_path_for(resource)
   "/show"
   if @user.save
     UserMailer.deliver_registration_confirmation(@user)
  end
end  
end
