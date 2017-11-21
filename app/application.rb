class Time
  def morning?
    hour < 12
  end
  def afternoon?
    hour >= 12
  end
end

class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.morning? == true
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
