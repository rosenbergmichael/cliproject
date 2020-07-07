#everything user sees, also what's talking to primariy class 

class CLI

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
        puts "Please choose one of the following options: "
        list_options
        input = gets.strip.downcase
        choose_option(input)
        return input 
    end

    def list_options
        puts <<-DOC.gsub /^\s*/, ''
        1. Videos by Country
        2. Videos by League
        3. Videos by Team
            Enter exit to leave program.
        DOC
    end

    def choose_option(input)
        case input 
        when "1"    
            puts "number 1 chosen"
        when "2"    
            puts "number 2 chosen"
        end
    end


end



# puts "Please enter a number 1-x to see available teams for that country"
# puts "1. England"
# puts "2. Italy"
# puts "3. xxx"
# puts "4. xxx"
# puts "Enter Q to exit"


    # def country_menu
    #     puts "Please enter a number 1-x to see available highlight videos for that team"
    #     puts "1. Arsenal"
    #     puts "2. Manchester City"
    #     puts "3. xxx"
    #     puts "4. xxx"
    #     puts "Enter B to go back"
    #     puts "Enter Q to exit"

    # end

    
    