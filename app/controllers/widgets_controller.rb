class WidgetsController < ApplicationController
  def index
    @title = "Widgets"
    @widgets = Widget.all
  end
  
  def new
    @title = "Neues Widget anlegen"
    @widget = Widget.new
    @sourcetypes = Sourcetype.all
  end
  
  def create
    params[:widget][:dashboard_id] = 1
    @widget = Widget.new(params[:widget])
    if @widget.save
      flash[:success] = "Widget gespeichert!"
      redirect_to widgets_path
    end
  end
  
  def destroy
    if Widget.find(params[:id]).delete()
      flash[:success] = "Erfolgreich gelöscht!"
      redirect_to widgets_path
    end
  end

end
