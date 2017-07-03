require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'
require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'
require_relative 'models/user'
require_relative 'models/dish_type'
def run_sql(sql)
    conn = PG.connect(dbname: 'goodfoodhunting')
    result = conn.exec(sql)
    conn.close
    result
end
helpers do
    def logged_in?
        current_user ? true : false
        #or if and else statement
        # or !!current user
        # current_user != nil
    end
    def current_user
        User.find_by(id: session[:user_id])
    end
end
# important!!!
enable :sessions
get '/' do
  @dishes = Dish.all
  erb :index
end
get '/dishes/new' do
    @dish = Dish.new
    @dish_types = DishType.all
    erb :new
end

post '/dishes' do
    dish = Dish.create(name: params[:name], image_url: params[:image_url], dish_type_id: params[:dish_type_id])
    redirect '/'
end
get '/dishes/:id' do
    @dish = Dish.find(params[:id])
    @comments = Comment.where(dish_id: params[:id])
    erb :dish_details
end
get '/dishes/:id/edit' do
    @dish = Dish.find(params[:id])
    @dish_types = DishType.all
    erb :edit
end
patch '/dishes/:id' do
    @dish = Dish.find(params[:id])
    @dish.name = params[:name]
    @dish.image_url = params[:image_url]
    @dish.save
    redirect '/'
end
delete '/dishes/:id' do
    @dish = Dish.find(params[:id])
    @dish.destroy
    redirect '/'
end
post '/comments' do
    # guard statement
    redirect '/login' if !logged_in?
    comment = Comment.create(body: params[:body], dish_id: params[:dish_id])
    redirect "/dishes/#{ params[:dish_id] }"
end
get '/login' do
    erb :login
end
post '/session' do
    # search for user in db (via email)
    user = User.find_by(email: params[:email])
    # authenticate user w passwword
    # checking if statement at the same time
    if user && user.authenticate(params[:password])
        # create a session - built in hash like data structure / global
        session[:user_id] = user.id
        #redirect to protected place
        redirect '/'
    else
        erb :login
    end
end
delete '/session' do
    session[:user_id] = nil
    redirect '/'
end
# restful routes ALSOWAYS START WITH the resource
#reading
#get '/dishes'
#get '/dishes/:id'
# get '/dishes/new' <--optional
#get '/dishes/:id/edit' <--optional
#creating
#post'/dishes'
#deleting
#delete '/dishes/:id'
#updating
#patch '/dishes/:id'
