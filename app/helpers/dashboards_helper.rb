module DashboardsHelper
    def getWidgetContent(widget)
      if widget.sourcetype.name == "RSS" && widget.sourceurl != nil
        # Quelle: http://simple-rss.rubyforge.org/
        
        # quelle: http://banusha.blogspot.com/2009/10/ruby-on-rails-try-catch-fainally-block.html
        begin
          rss = SimpleRSS.parse open(widget.sourceurl)
        
          if rss.items        
            output = "<h2>" + rss.channel.title + "</h2>"
                    
            rss.items[0..4].each do |i|
              output += "<h3>" + link_to(i.title, i.link, { :target => '_blank' }) + "</h3>"
            end
            
            # Quelle: http://blog.emeidi.com/2011/02/25/ruby-on-rails-3-kleinigkeiten/
            output.html_safe
          end
        rescue
          flash[:error] = "Konnte Feed nicht abrufen. Bitte ueberpruefe die URL!"
        end
      end
    end
end