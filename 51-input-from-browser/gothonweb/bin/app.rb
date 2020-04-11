require "sinatra"

set :port, 8080
set :static, true
set :public_folder, "static"
set :views, "views"

get "/" do
  return "Hello World"
end

get "/hello" do
  erb :hello_form, :layout => :layout
end

post "/hello" do
  name = params[:name]
  name = name.size == 0 ? "Nobody" : name
  greeting = params[:greeting]
  greeting = greeting.size == 0 ? "Hi There" : greeting

  erb :index, :layout => :layout, :locals => {"greeting"=> greeting, "name"=> name}
end
