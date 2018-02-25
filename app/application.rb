class Application
  def call(env)
    resp = Rack::Response.new # create a response object

    # create a time appropriate greeter
    # If it's before noon, greet the user with "Good Morning!"
    # If it's after noon, greet the user with "Good Afternoon!"
    time = Time.now
    resp.write time.hour < 12 ?  "Good Morning!" : "Good Afternoon!"

    resp.finish # complete the response
  end
end

=begin
  puts time.hour < 12 ? "Good Morning!" : "Good Afternoon!"
=end
