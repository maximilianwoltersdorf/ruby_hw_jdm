class PagesController < ApplicationController

  
  def index
    @title = "Home"
  end

  def stream
    @title = "Deine Streams"
    video = "/video/"
    url = Stream.find_by_id(1+rand(Stream.count)).url
    
    @video_path = video + url
  end
  
  def help
    @title = "Help"
  end
  
  def about
    @title = "About"
  end

end
