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

    Puppy.new(name,breed,age)
    #@analyzed_text = TextAnalyzer.new(text_from_user)
    erb :display_puppy
  end

end
