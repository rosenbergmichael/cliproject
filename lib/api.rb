require "httparty"
require "pry"
require_relative "./videos.rb"

class API 
  
    def get_api 
      videos = HTTParty.get("https://www.scorebat.com/video-api/v1/")  
      videos.each do |matches|  
        Videos.new(matches["title"], matches["competition"]["name"], matches["videos"][0]["embed"].split("'")[3])
      end   
    end 

  end




