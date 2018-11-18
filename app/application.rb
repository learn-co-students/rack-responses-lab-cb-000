require 'pry'

class Application 
  
  def call(env) 
   
    resp = Rack::Response.new 
    h,m = Time.now.strftime("%R").split(":")
    if h.to_i < 12
      resp.write "Good Morning!"
    else 
      resp.write "Good Afternoon!"
    end 
    resp.finish
  end 
  
end 
