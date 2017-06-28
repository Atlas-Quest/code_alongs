require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'pg'

get '/' do
  erb :index
end

db_conn = PG.connect(dbname: 'grade_school_db', :host 'localhost')
