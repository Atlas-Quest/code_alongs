
require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/countrycode' do
  userInput = params['countrycode']
  result = HTTParty.get('http://api.fixer.io/latest?base=' + userInput)
  result['rates']['AUD'].to_s
end
