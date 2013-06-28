# use this code to create an address book in sinatra
# create an input form
# add a person
# list people
require 'pg'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get "/" do
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
  erb :add_person
end

# get all the inputs
# put them in the string
# make it work

# this establishes a connection to the database
# db = PG.connect(:dbname => 'address_book',
#   :host => 'localhost')
# executing sql code
# passing a string of sql to the database

# insert into database
# db = PG.connect(:dbname => 'address_book',
#   :host => 'localhost')

# puts "what's your name girl?"
# name = gets.chomp
# sql = "insert into contacts (first) values ('#{name}')"
# db.exec(sql)
# sql = "select first, age from contacts"
# db.exec(sql) do |result|
#   result.each do |row|
#     puts row
#   end
# end
# db.close