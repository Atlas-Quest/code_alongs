require 'sinatra'
require 'sinatra/reloader'
#  user comes with a get request with the / path about
get '/' do
  erb :index
end

get '/about' do
  # my response
  erb :about_me

end
