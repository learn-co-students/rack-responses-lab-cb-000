class Application
  def call(env)
    resp = Rack::Response.new

      resp.write "Good Afternoon!"
      resp.write "Good Morning!"

    resp.finish
  end
end
