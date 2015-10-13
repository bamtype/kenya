require 'sinatra'
require 'sinatra/activerecord'
require "bundler/setup"
require "rack-flash"

set :database, "sqlite3:blog.sqlite3"
# require './config/environments'  #database configuration
require './models'
# require 'sinatra-flash'

get '/' do 
	erb :mao
end

post '/secondary' do

  puts params.inspect

  # if login is correct go to 
  # secondary otherwise reload first
  
  erb :secondary

  

end  

# post "/form1" do
#   params[:username]
#   @user=User.where()