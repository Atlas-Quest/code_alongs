
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

# https://api.github.com/users/atlas-quest/gists
# HTTParty.get('http://api.fixer.io/latest?base=AUD').parsed_response
