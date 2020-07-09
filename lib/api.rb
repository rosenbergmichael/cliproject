#need to fix environment.rb to get rid of the below two requires?

require "httparty"
require "pry"
require_relative "./videos.rb"

class API 
  

    def get_api 
      videos = HTTParty.get("https://www.scorebat.com/video-api/v1/")  
      videos.each do |matches|  
        Videos.new(matches["title"], matches["competition"]["name"], matches["videos"][0]["embed"])
      end   
    end 

  end




