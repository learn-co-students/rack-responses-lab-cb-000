class Application

  def call(new)
    resp = Rack::Response.new
    #Check time and greet user depending on the time
    #get time
    time = Time.now

    if time.hour < 12
      resp.write "Good Morning! The hour is #{time.hour}"
    elsif time.hour > 11
      resp.write "Good Afternoon! The hour is #{time.hour}"
    else
      resp.write "error this hour not found: #{time.hour}"
    end

    resp.finish
  end

end
