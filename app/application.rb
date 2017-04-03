class Application

  def call(env)
    response = Rack::Response.new

    response.write greet
    response.finish
  end

  def greet
    hour = Time.now.hour

    hour < 12 ? "Good Morning!" : "Good Afternoon!"
  end
end
