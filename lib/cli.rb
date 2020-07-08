#everything user sees, also what's talking to primariy class 
#provide user interface, 'gets' and 'puts' user input

class CLI

    attr_reader :api

    def initialize
        @api = API.new 
        api.get_api 
    end
    
    
    def welcome_menu
        system("clear")
        greeting
            while menu != "exit"
            end    
        end_program
        binding.pry
    end

    def greeting
        puts "Welcome to World Soccer Video Highlights!"
    end

    def end_program
        puts "Thanks for stopping by, come back soon!"
    end

    def menu 
        puts "Please choose one of the following number options: "
        list_options
        input = gets.strip.downcase
        choose_option(input)
        return input 
    end

    def list_options
        puts <<-DOC.gsub /^\s*/, ''
        1. Premier League Videos (England)
        2. La Liga Videos (Spain)
        3. Serie A Videos (Italy)
            Enter 'exit' to leave program.
        DOC
    end

    def choose_option(input)
        case input 
        when "1"    
            puts "Premier League Videos"
        when "2"    
            puts "La Liga Videos"
        when "3"
             puts "Serie A Videos"    
        end
        #is this where I would put the videos.rb methods england_videos, spain_videos?
        #so Videos.england_videos for "1" ?
        #should return new list per country, with title (Arsenal-Wolves) and link to video
    end


end


#another menu 



  
    
    