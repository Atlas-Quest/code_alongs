require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

get '/result' do
  first_num = params[:first_num].to_f
  second_num = params[:second_num].to_f
  total = first_num + second_num
  "the sum is #{total}"
end

get '/calc' do
# using a query string... http://localhost:4567/calc?num1=7&num2=3
  "the sum is #{ params[:num1].to_i + params[:num2].to_i}"
end
