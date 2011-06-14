class DashboardsController < ApplicationController
  
  def index
    @title = "Dashboard"
    @dashboard = Dashboard.first
    
    if @dashboard
      if @dashboard.widgets
        @widgets = @dashboard.widgets
      end
    end
    
  end

end
