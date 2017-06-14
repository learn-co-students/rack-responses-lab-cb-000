class Application

  def call(env)
    resp = Rack::Response.new
    date = Time.new
    puts date.hour
    if date.hour.to_i >= 12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning Afternoon"
    end
    resp.finish
  end

end
