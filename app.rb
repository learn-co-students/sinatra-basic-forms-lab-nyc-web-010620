# Controller file 
require_relative 'config/environment'

class App < Sinatra::Base

   # when a user goes to the root url, it renders index.erb via a get method
   get '/' do
      erb :index 
   end

   # renders a form that can post a name, breed, and age 
   get '/new' do
      erb :create_puppy 
   end

   # the server will grab the user input from the form and then use the user input 
   # to create a new instance of puppy and will display what we specify in our display_puppy.erb file 
   # and redirect to the '/puppy' route 
   post '/puppy' do 
      @puppy = Puppy.new((params["name"]), (params["breed"]), (params["age"]))
      erb :display_puppy
   end 

end
