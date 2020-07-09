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
        num = 0
        @@all.each do |video|
            if video.league.include? "ENGLAND"
         puts "#{num += 1}. #{video.match}, #{video.video_link}"
           end  
        end 
     end 
 

     def self.show_spain_videos
        num = 0
        @@all.each do |video|
            if video.league.include? "SPAIN"
            puts "#{num += 1}. #{video.match}, #{video.video_link}"
           end  
        end 
     end 


     def self.show_italy_videos
        num = 0
        @@all.each do |video|
            if video.league.include? "ITALY"
            puts "#{num += 1}. #{video.match}, #{video.video_link}"
            end  
        end 
     end 

end

