class DashboardsController < ApplicationController
  before_filter :user_is_logged_in?
  
  def index
    @title = "Dashboard"
    @dashboard = Dashboard.find_by_user_id(current_user.id)

    if @dashboard.nil?
      @dashboard = Dashboard.new({ :user_id => current_user.id })
      @dashboard.save
    end
    
    @widgets = @dashboard.widgets


  end
   
  def konfiguration
    @title = "Konfiguration"
  end

end
