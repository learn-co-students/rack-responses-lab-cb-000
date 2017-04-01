class Application

  def call(env)
    resp = Rack::Response.new
    time = Time.now.strftime("%H").to_i

    if time < 12 
      resp.write "Good Morning!\n"
      resp.write "The time is #{Time.now.hour}:#{Time.now.min}.\n"
      resp.write "How about doing something productive?"
    else
      resp.write "Good Afternoon!"
      resp.write "The time is #{Time.now.hour}:#{Time.now.min}.\n"
      resp.write "Relax, get a beer, feel good about yourself."
    end

    resp.finish
  end

end