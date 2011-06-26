class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  
  before_filter :prepare_for_mobile
  
  def after_sign_in_path_for(resource)
    if mobile_device?
      "/dashboard"
    else
      "/stream"
    end
   
  end
  
  private
  
    def user_is_logged_in?
      if !current_user.nil?
        current_user
      else
        flash[:error] = "Bitte erst einloggen!"
        redirect_to new_user_session_path
      end
    end
  
    def mobile_device?
      if session[:mobile_param]
        session[:mobile_param] == "1"
      else
        request.user_agent =~ /Mobile|webOS/
      end
    end
    
    helper_method :mobile_device?
    
    def prepare_for_mobile
      session[:mobile_param] = params[:mobile] if params[:mobile]
      request.format = :mobile if mobile_device?
    end
    
    def authenticate
      if current_user
        
      else
      redirect_to new_user_registration_path
      end
    end

end
