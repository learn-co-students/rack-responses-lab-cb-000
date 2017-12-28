
class Application
  def call(env)
    rrs = Rack::Response.new
    now = Time.now
        if now.hour >=12
          rrs.write "Good Afternoon"
        else
          rrs.write "Good Morning"
    end
    rrs.finish
  end

end
