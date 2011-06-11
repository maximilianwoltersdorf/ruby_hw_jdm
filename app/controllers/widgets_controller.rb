class WidgetsController < ApplicationController
  def index
    @title = "Widgets"
    @widgets = Widget.all
  end

end
