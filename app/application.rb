class Application

  def call(env)
    resp = Rack::Response.new

    hour = Time.now.hour

    resp.write hour

    if hour < 12
      resp.write "\nGood Morning!"
    else
      resp.write "\nGood Afternoon!"
    end

    resp.finish
  end

end
