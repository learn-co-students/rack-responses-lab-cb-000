class Application
  def call(env)
    return [ 200, {'Content-Type' => 'text/html'}, hour_response ]
  end

  def hour_response
    #
    (Time.now.hour >= 12) ?  ["Good Afternoon!"] : ["Good Morning!"]
  end

end
