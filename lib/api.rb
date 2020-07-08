#need to fix environment.rb to get rid of the below two requires?

require "httparty"
require "pry"
require_relative "./videos.rb"

class API 
  
  #  URL = "https://www.scorebat.com/video-api/v1/"

    def get_api 
      videos = HTTParty.get("https://www.scorebat.com/video-api/v1/")  
      videos.each do |matches|
        
           Videos.new(matches["title"], matches["competition"]["name"], matches["videos"][0]["embed"])
        end   
      end 


 


  end


#FOR VIDEOS.RB FILE :

#one method is compiling list of all EPL videos 
#one method is compiling list of all La Liga videos
#one method is compiling list of all Serie A videos
#figure out how to extract video link from embed via regex

