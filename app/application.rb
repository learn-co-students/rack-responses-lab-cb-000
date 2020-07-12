class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour < 12
      resp.write("Good Morning!\n")
      resp.write(Time.now)
    else
      resp.write("Good Afternoon!\n")
      resp.write(Time.now)
    end

    resp.finish
  end

end
