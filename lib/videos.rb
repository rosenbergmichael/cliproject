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



    def self.show_england_videos
        @@all.each_with_index do |video, index|
            if video.league.include? "ENGLAND"
         puts "#{index + 1}. #{video.match}, #{video.video_link}"
         # include video links, , #{video.video_link} but only the link?
            end  
        end 
     end 
 

     def self.show_spain_videos
        @@all.each_with_index do |video, index|
            if video.league.include? "SPAIN"
         puts "#{index + 1}. #{video.match}"
         # include video links, , #{video.video_link} but only the link?
            end  
        end 
     end 


     def self.show_italy_videos
        @@all.each_with_index do |video, index|
            if video.league.include? "ITALY"
         puts "#{index + 1}. #{video.match}"
         # include video links, , #{video.video_link} but only the link?
            end  
        end 
     end 
   

end




#Notes 7/9:
#matches by countries works, but how can I fix the index numbers
#so that they start a new index list at 1 vs now they're showing
#the index numbers from the original list?

#Also, need to figure out how to include the video link after

