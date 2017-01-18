class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour.to_i >= 12 && Time.now.min.to_i > 0
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
