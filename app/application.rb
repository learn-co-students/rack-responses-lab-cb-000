class Application

  def call(env)
    resp = Rack::Response.new
    Time.now.hour < 12 ? greeting = "Good Morning" : greeting = "Good Afternoon"
    resp.write greeting
    resp.finish
  end

end
