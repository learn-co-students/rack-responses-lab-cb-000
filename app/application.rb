class Application
  def call(env)
    resp = Rack::Response.new

    current_time = Time.now()

    #resp.write "Current time: #{current_time}"

    if current_time.hour > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end
end