require 'pry'
class Application
  def call(env)
    resp = Rack::Response.new

    t_now = Time.now

    if t_now.hour >= 12
      resp.write 'Afternoon'
    else
      resp.write 'Morning'
    end

    resp.finish
  end
end
