class ApplicationController < ActionController::Base
  protect_from_forgery
  helper :all
  
  before_filter :prepare_for_mobile
  
  def after_sign_in_path_for(resource)
   "/show"

  end
  
  private
  
    def mobile_device?
      if session[:mobile_param]
        session[:mobile_param] == "1"
      else
        request.user_agent =~ /Mobile|webOS/
      end
    end
    
    def prepare_for_mobile
      session[:mobile_param] = params[:mobile] if params[:mobile]  
      request.format = :mobile if mobile_device?
    end
    
    helper_method :mobile_device?  
end
