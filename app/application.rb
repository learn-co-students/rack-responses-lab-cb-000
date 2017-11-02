class Application

   def call(new)
     resp = Rack::Response.new

     #get time
     time = Time.now
   #if time is less then 12..
     if time.hour < 12
       resp.write "Good Morning! The hour is #{time.hour}"
    #if time is more then 12..
     elsif time.hour > 11
       resp.write "Good Afternoon! The hour is #{time.hour}"

     end

     resp.finish
   end

 end
