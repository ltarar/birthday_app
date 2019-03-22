require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base
  # configure(:development) { set :session_secret, "something" }
  # enable : sessions
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:name]
    @day = params[:day].to_i
    @month = Date::MONTHNAMES.index(params[:month])
    @year = Time.now.year

    @birthday = Date.new(@year, @month, @day)
    @today = Date.today

    if @birthday > @today
      @days_left = (@birthday - @today).to_i
    else 
      @days_left = (@birthday.next_year - @today).to_i
    end
    erb(:play)
  end

  run! if app_file == $0
end