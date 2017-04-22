class Application

  def call(me)
    hour = Time.now.to_s.split(" ")[1].split(":")[0].to_i
    morning = hour<12
    resp = Rack::Response.new
    morning ? resp.write("Good Morning!") : resp.write("Good Afternoon!")
    resp.finish
  end
end
