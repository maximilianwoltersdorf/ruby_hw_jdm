class DashboardsController < ApplicationController
      before_filter :authenticate

  def index
    @title = "Dashboard"
    @dashboard = Dashboard.find(:first, :conditions => { :user_id => current_user })
    
    if @dashboard
      if @dashboard.widgets
        @widgets = @dashboard.widgets
      end
    else
      Dashboard.create!({ :user_id => current_user })
    end
   end
   
   def konfiguration
     @title = "Konfiguration"
   end
   
  
   
  
  
end
