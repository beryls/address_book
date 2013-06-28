# use this code to create an address book in sinatra
# create an input form
# add a person
# list people
require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'



get "/" do
  @db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  @show_db = "select * from contacts"
  erb :index
end

get "/add_person" do
  erb :add_person
end

post "/add_person" do
  @first = params[:first]
  @last = params[:last]
  @age = params[:age]
  @gender = params[:gender]
  @dtgd = params[:dtgd]
  @phone = params[:phone]
  db = PG.connect(:dbname => 'address_book', :host => 'localhost')
  add_to_db = "insert into contacts (first, last, age, gender, dtgd, phone) values ('#{@first}', '#{@last}', '#{@age}', '#{@gender}', '#{@dtgd}', '#{@phone}')"
  db.exec(add_to_db)
  erb :add_person
end