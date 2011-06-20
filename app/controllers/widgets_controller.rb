class WidgetsController < ApplicationController
  before_filter :user_is_logged_in?
  
  def index
    @title = "Widgets"
    dashboard = Dashboard.find_by_user_id(current_user.id)
    @widgets = dashboard.widgets
  end
  
  def new
    @title = "Neues Widget anlegen"
    @widget = Widget.new
    @sourcetypes = Sourcetype.all
  end
  
  def create
    dashboard = Dashboard.find_by_user_id(current_user.id)
    
    params[:widget][:dashboard_id] = dashboard.id
    @widget = Widget.new(params[:widget])
    if @widget.save
      flash[:success] = "Widget gespeichert!"
      redirect_to widgets_path
    end
  end
  
  def destroy
    if Widget.find(params[:id]).delete()
      flash[:success] = "Erfolgreich geloescht!"
      redirect_to widgets_path
    end
  end

end

