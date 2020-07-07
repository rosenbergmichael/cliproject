#not sure yet, maybe Videos...
require "pry"
require_relative "./api.rb"
class Videos

    attr_accessor :response

    def initialize
        API.new.get_api
        @response = API.all
        binding.pry
    end

end
Videos.new 