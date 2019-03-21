require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    "Testing infrastructure working!"
  end
end