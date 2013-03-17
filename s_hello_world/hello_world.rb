require 'sinatra'

disable  :sessions, :logging
disable :dump_errors, :some_custom_option

set :environment, :production
set :bind, 'localhost'
set :port, 8080
set :public_folder, 'public'

get '/index.html' do
  erb :index
end

