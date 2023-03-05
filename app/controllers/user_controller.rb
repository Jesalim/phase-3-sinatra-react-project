class UserController < Sinatra::Base

    set :default_content_type, 'application/json'

    get '/users' do
        users = User.all
        users.to_json
    end


end