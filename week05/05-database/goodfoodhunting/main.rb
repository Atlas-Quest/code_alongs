require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'

# reading
# get '/dishes'
# get '/dishes/'id''
# get 'dishes/new' # optional
# get 'dishes/id/edit' # optional

# deleting
# delete '/dishes/id'
# get 'remove_this_dish_i_hate_it'

# updating
# patch '/dishes/id'

# creating
# post '/dishes'
# get 'create_a_dish'
def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  results
end

get '/dishes' do
  @dishes = run_sql('SELECT * FROM dishes order by name;')
  erb :index
end

get '/dishes/:id' do
  sql = "SELECT * FROM dishes WHERE id = #{params[:id]};"
  @dish = run_sql(sql)[0]
  erb :dish_details
end

get '/dishes/new' do
  erb :new
end

post '/dishes' do
  sql = "INSERT INTO dishes(name, image_url) VALUES ('#{ params[:name]}'), '#{ params[:image_url]}');"

  run_sql(sql)
  redirect_to '/dishes'
end

patch '/dishes/:id' do
  run_sql("UPDATE dishes SET name = 'abc', image_url = '#{[:image_url]}' WHERE id = #{params[:id]}")
  redirect '/dishes'
end

delete '/dishes/:id' do
  run_sql("DELETE FROM dishes WHERE id = #{params[:id]};")
  redirect '/dishes'
end

# CRUD ---> Wireframe needs to be created...
# get /dish_list get /dish_details/id
