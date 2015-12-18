require "sinatra"
require "json"
require "httparty"

class App < Sinatra::Base

  configure do
    set :logging, true
  end

  get "/" do
    "<h1>Hi</h1>"
  end

  get "/api/users" do
    response = HTTParty.get('http://reqres.in/api/users').to_json
  end

end

