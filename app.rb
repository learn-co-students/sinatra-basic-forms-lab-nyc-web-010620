require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    get '/new' do
        erb :create_puppy
    end

    post '/puppy' do
        @puppy = Puppy.new({breed:params[:breed],age:params[:age],name:params[:name]})

        erb :display_puppy
    end
end
