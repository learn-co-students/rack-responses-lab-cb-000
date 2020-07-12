class Application
  def call(env)
    resp = Rack::Response.new
  
    time = Time.now
    formatted_time = time.localtime.strftime("%H:%M")
    
    if time.hour < 12
      resp.write "Good Morning!\n"
    else
      resp.write "Good Afternoon!\n"
    end
    
    resp.write "The current time is: #{formatted_time}\n"
    resp.write "The timezone is #{time.zone}."
    
    resp.finish
  end
end