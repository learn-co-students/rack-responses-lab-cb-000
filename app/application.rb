require "pry"
class Application

#  binding.pry

  def call(env)
    resp = Rack::Response.new
      time_now = Time.now
      time_array = time_now.to_a
      hour_now = time_array[2]

      if hour_now < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
    resp.finish
  end

end
