#need to fix environment.rb to get rid of the below two requires?

require "pry"
require_relative "./api.rb"

class Videos

    attr_accessor :match, :league, :video_link

   @@all = []

    def initialize(match, league, video_link)
        @match = match         
        @league = league
         @video_link = video_link 
        @@all << self 
         
    end

    def self.all
      @@all 
    end 

    
    def england_videos
        #if competition name includes ENGLAND, show list of corresponding title embed 
        #iframe src links (maybe title and link, so "Wolves - Arsenal" : videolink)
        
    end


    def spain_videos
        #if competition name includes SPAIN, show list of corresponding title embed 
        #iframe src link
    end

    def italy_videos
        #if competition name includes ITALY, show list of corresponding title embed 
        #iframe src link
    end

   

end

#FOR VIDEOS.RB FILE :
#one method is compiling list of all EPL videos 
#one method is compiling list of all La Liga videos
#one method is compiling list of all Serie A videos
#figure out how to extract video link from embed via regex