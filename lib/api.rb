#get data from internet w/ hitting api or scraping
require "httparty"
require "pry"
class API 
  @@all = []
  

    def get_api 
      @@all << HTTParty.get("https://www.scorebat.com/video-api/v1/")
    end 

    def self.all 
      @@all 
    end

  end

#FOR VIDEOS.RB FILE :
#one method is compiling list of all teams
#one method is compiling list of all countries
#one method is showing information about just one team, maybe instance variable?
#figure out how to extract video link from embed via regex

