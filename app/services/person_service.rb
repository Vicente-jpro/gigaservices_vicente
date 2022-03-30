class PersonService 
    include HTTParty
    base_uri 'randomuser.me/api'

    def initialize 
      @options = {}  
    end

    def general 
      self.class.get("/", @options)
    end
end