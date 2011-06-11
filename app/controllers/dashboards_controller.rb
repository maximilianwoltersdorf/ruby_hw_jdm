class DashboardsController < ApplicationController
  
  def index
    @title = "Dashboard"
    @dashboard = Dashboard.first
    
  end

end
