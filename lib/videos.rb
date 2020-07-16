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
      Videos.organize.select { |n| n.league.include? "ENGLAND" }
    end 
 

     def self.show_spain_videos
        Videos.organize.select { |n| n.league.include? "SPAIN" } 
     end 


     def self.show_italy_videos
        Videos.organize.select { |n| n.league.include? "ITALY" } 
     end

     def self.organize
      @@all.sort {|a, b| a.match <=> b.match}
     end
    
end

