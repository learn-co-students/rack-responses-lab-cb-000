class Application

  def call(env)
    resp = Rack::Response.new

    hour = Time.now.hour
    minites = Time.now.min

    resp.write "#{hour}:#{minites}\n"

    if hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end

end
