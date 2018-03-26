require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/create' do
    erb :create_puppy
  end


  post '/new' do
    name = params[:name]
    age = params[:age]
    breed = params[:breed]

    puppy = Puppy.new(name,breed,age)
    @name = puppy.name
    #@age = new_puppy.age

    erb :display_puppy
  end

end
