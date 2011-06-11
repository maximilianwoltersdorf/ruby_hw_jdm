class DashboardsController < ApplicationController
  
  def index
    @title = "Dashboard"
    @dashboard = Dashboard.first
    
    @widgets = @dashboard.widgets
    
  end

end
