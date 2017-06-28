require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  erb :index
end

# http://localhost:4567/stock?stock=AAPL
get '/stock' do
  params[:stock]
# output html
end
