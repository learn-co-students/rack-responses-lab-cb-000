class Application
  SLOT_SIZE = 6

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World\n\nGood "
    resp.write Time.now.hour >= 12 ? "Afternoon" : "Morning"

    resp.finish
  end

end
