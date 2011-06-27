class PagesController < ApplicationController
    before_filter :authenticate, :only => [:stream]

  
  def index
    @title = "Home"
  end

  def stream
    @title = "Deine Streams"
    video = "/video/"
    stream = Stream.find_by_id(1+rand(Stream.count))
    
    if !stream.nil?
      real_url = stream.url
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
