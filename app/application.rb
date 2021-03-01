require 'pry'
class Application
    def call(env)
        resp = Rack::Response.new
        
        date_and_time = Time.now 
        time = date_and_time.hour
      
        if time == (1..11)
            resp.write "Good Morning"
        else
            resp.write "Godd Afternoon"
        end
    end 
end 