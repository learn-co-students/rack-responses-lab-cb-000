class Application 
  
  def call(env)
    resp = Rack::Response.new 
    
    time_1 = Kernel.rand(1..24)
    
    if time_1 < 12 
      resp.write "Good Morning!"
    elsif time_1 >= 12 
      resp.write "Good Afternoon!"
    end 
    
    resp.finish
  end 
  
end 