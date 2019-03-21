require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb(:play)
  end

  run! if app_file == $0
end