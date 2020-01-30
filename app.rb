require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do
  enable :sessions
  set :session_secret, "secret"
  end


  get '/' do
    erb :index
  end 
  
  post '/checkout' do 
    # The controller action /checkout, should take the params from the form and add it to the session hash. The key should be item and the value should be the item the user entered to the purchase. Make sure to store the session hash in an instance variable that you can access in the views.
    
    sessions[:item] = params[:item]
    @sessions = sessions 
    erb :checkout
  end
end