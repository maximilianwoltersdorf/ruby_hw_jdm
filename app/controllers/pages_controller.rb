class PagesController < ApplicationController

  
  def index
    @title = "Home"
  end

  def stream
    @title = "Deine Streams"
    video = "/video/"
    url = Stream.find_by_id(1+rand(Stream.count))
    
    if !url.nil?
      real_url = url.url
    else
      real_url = ""
    end
    
    @video_path = video + real_url
  end
  
  def help
    @title = "Help"
  end
  
  def about
    @title = "About"
  end

end
