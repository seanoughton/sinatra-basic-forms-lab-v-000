require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end


  post '/new' do
    name = params[:name]
    age = params[:age]
    breed = params[:breed]

    new_puppy = .new(name,breed,age)
    @name = new_puppy.name
    #@age = new_puppy.age

    erb :display_puppy
  end

end
