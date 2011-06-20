class PagesController < ApplicationController

  
  def index
    @title = "Home"
  end

  def stream
    @title = "Deine Streams"
  end
  
  def help
    @title = "Help"
  end
  
  def about
    @title = "About"
  end

end
