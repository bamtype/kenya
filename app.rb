require 'sinatra'
require 'sinatra/activerecord'
require 'models'
require 'sinatra-flash'

set :database, "sqlite3:kenya.sqlite3"

get "/" do 

end	

get "/user" do
end

get "/post" do
	end

  erb :index
# end

get "/sign-in" do
  erb :sign_in_form
end

post "/sign-in" do
  @user = User.where(username: params[:username]).first

  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    flash[:notice] = "Welcome to Cop Watch..."
  else
    flash[:alert] = "Obviously a cop hasnt shot you because you are here?"
  end

  redirect "/"
end

get "/sign-out" do
  if session[:user_id]
    @user = User.find(session[:user_id])
    session[:user_id] = nil
    flash[:notice] = "Party over oops out of time..."
  else
    flash[:alert] = "You must first recite the lyrics to Cop Killer from Ice-T"
  end

  redirect "/"
end




