class Application

  def call(env)
    resp = Rack::Response.new
    if Time.now.strftime("%k%M").to_i < 1200
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
