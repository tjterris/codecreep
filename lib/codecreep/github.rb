require 'httparty'

module Codecreep
  class Github
    include HTTParty
    base_uri 'https://api.github.com'
    basic_auth ENV['GH_USER'], ENV['GH_PASS']


    def get_user(user)
      self.class.get("/users/#{user}")
    end
    
    def get_user_following(user)
      self.class.get("/users/#{user}/following")
    end

    def get_user_followers(user)
      self.class.get("/users/#{user}/followers")
    end


  end
end

# 
# 