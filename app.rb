require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/create_puppy' do
    erb :index
  end

  post '/' do
    #text_from_user = params[:user_text]
    #@analyzed_text = TextAnalyzer.new(text_from_user)
    #erb :results
  end

end
