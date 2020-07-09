require 'pry'

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
    end


    def greeting
        puts "Welcome to World Soccer Video Highlights!"
    end


    def end_program
        puts "Thanks for stopping by, come back soon!"
    end


    def menu 
        puts ""
        puts "Please choose one of the following number options: "
        puts ""
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
        DOC
        puts ""
        puts "Enter 'exit' to leave program."
    end


    def choose_option(input)
        case input 
        when "1"   
            puts "" 
            puts "Click a link to watch that game's highlights!  Or enter 1-3 to view a different league."
            puts ""
            Videos.show_england_videos 
        when "2"   
            puts "" 
            puts "Click a link to watch that game's highlights!  Or enter 1-3 to view a different league."
            puts ""
            Videos.show_spain_videos 
        when "3"
            puts "" 
            puts "Click a link to watch that game's highlights!  Or enter 1-3 to view a different league."
            puts ""
            Videos.show_italy_videos    
        end
    end


end






  
    
    