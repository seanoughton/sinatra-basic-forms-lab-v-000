require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    #text_from_user = params[:user_text]
    #@analyzed_text = TextAnalyzer.new(text_from_user)
    erb :display_puppy
  end

end
