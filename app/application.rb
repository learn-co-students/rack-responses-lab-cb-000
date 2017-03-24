class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now


    if time.hour <= 12
      resp.write "Good Morning! The time is #{time.hour}:#{time.min} AM."
    else
      resp.write "Good Afternoon! The time is #{time.hour - 12}:#{time.min} PM." #:#{time.min}.
    end

    resp.finish
  end

end
