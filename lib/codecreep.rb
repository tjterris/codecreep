$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'pry'

require 'codecreep/init_db'
require 'codecreep/github'
require "codecreep/version"
require "codecreep/user"


module Codecreep
  class App
    def initialize
      @github = Github.new
    end

    def menu
      puts "Would you like to fetch or analyze a user from Github?"
      puts "Type 'fetch' or 'analyze'."
      input = gets.chomp
      if input == "fetch"
        fetch
      if input == "analyze"
        analyze
      end
      end
    end

    def fetch
      user = gets.chomp
      @github.find_or_create_by(name: user) #Not recognizing Codecreep::User.new .. saying unitialized
      
    end

    def analyze
      #sorts data from database
    end
  

  end
end

app = Codecreep::App.new
app.menu
binding.pry
