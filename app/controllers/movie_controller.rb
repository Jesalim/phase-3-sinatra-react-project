class MovieController < Sinatra::Base

  set :default_content_type, 'application/json'


    # Enable CORS Headers
    configure do
        enable :cross_origin
      end
    
      before do
        response.headers['Access-Control-Allow-Origin'] = '*'
      end
    
      options "*" do
        response.headers["Access-Control-Allow-Methods"] = "GET, PUT, POST, DELETE, OPTIONS"
        response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
        response.headers["Access-Control-Allow-Origin"] = "*"
        200
      end

  
  get '/movies' do
      movies = Movie.all
      movies.to_json
  end

  get '/movies/:user_id' do 
      movies = Movie.find_by(user_id: params[:user_id].to_i)
      movies.to_json
  end



  post '/create/movie' do

    data = JSON.parse(request.body.read)

    movies = Movie.create(data)
    movies.to_json 
  end 


  get '/movies/:year' do
      movies = Movie.find_by(year: params[:year])
      movies.to_json
  end

#   delete '/movies/:user_id' do 
#       movies = Movie.find_by(params[:user_id])
#       movies.destroy
#       movies.to_json
#   end

  put '/movies/:id' do 
        data = JSON.parse(request.body.read)
      movies = Movie.find(params[:id])
      movies.update(data)

      movies.to_json
    end



    # users controllers

get '/user/movies/:id' do

    user = User.find(params[:id].to_i)
    movies = user.movies
    movies.to_json
end


post '/user/create' do
    data = JSON.parse(request.body.read)
    users = User.create(data)

    users.to_json

end




end


