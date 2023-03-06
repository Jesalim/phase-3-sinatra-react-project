class MovieController < Sinatra::Base

  set :default_content_type, 'application/json'
  
    # configure do
    #   enable :cross_origin
    # end
  
    # before do
    #   response.headers['Access-Control-Allow-Origin'] = '*'
    # end
  
    # options "*" do
    #   response.headers["Allow"] = "GET, PUT, POST, DELETE"
    #   response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
    #   response.headers["Access-Control-Allow-Origin"] = "*"
    #   response.headers["Access-Control-Allow-Methods"] = "GET, PUT, POST, DELETE"
    #   200
    # end

  get '/movies' do
      movies = Movie.all.order(year: :desc)
      movies.to_json
  end

  post '/create' do
      begin
          data = JSON.parse(request.body.read)
          data["originally_fetched"] = false
          movies = Movie.create(data)
          movies.to_json
      rescue => e 
          {
              error: e.message
          }.to_json
  end
  end 

  get '/search' do
      query = params[:query]
      matching_movies = Movie.select{ |movie| movie[:title].include?(query) || movie[:year].to_s.include?(query) }
      matching_movies.to_json
      end

  delete '/movies/destroy/:id' do
      begin
      movie = Movie.find(params[:id])
      movie.destroy
  rescue => e 
      [422, {
          error: e.message
  }.to_json]
  end
  end

  put '/movies/update/:id' do 
      data = JSON.parse(request.body.read)
      begin
          movies = Movie.find(params[:id])
          movies.update(data)
              { message: "updated successfully" }.to_json
          rescue => e 
              [422, {
                  error: e.message
          }.to_json]
      end
  end

end


#   get '/search' do
#     query = params[:query]
#     matching_movies = Movie.select{ |movie| movie[:title].include?(query) || movie[:year].to_s.include?(query) }
#     matching_movies.to_json
#     end

#   get '/movies/:user_id' do 
#       movies = Movie.find_by(user_id: params[:user_id].to_i)
#       movies.to_json
#   end

#   get '/movies/:year' do
#       movies = Movie.find_by(year: params[:year])
#       movies.to_json
#   end

# #   delete '/movies/:user_id' do 
# #       movies = Movie.find_by(params[:user_id])
# #       movies.destroy
# #       movies.to_json
# #   end

#   put '/movies/:id' do 
#         data = JSON.parse(request.body.read)
#       movies = Movie.find(params[:id])
#       movies.update(data)

#       movies.to_json
#     end



#     # users controllers

# get '/user/movies/:id' do

#     user = User.find(params[:id].to_i)
#     movies = user.movies
#     movies.to_json
# end


# post '/user/create' do
#     data = JSON.parse(request.body.read)
#     users = User.create(data)

#     users.to_json

# end

# put 'update/movie/:id' do
#   data = JSON.parse(request.body.read)
#   movie = Movie.find(params[:id].to_i)
#   movie.update(data)

# end

# delete 'movie/destroy/:id' do
#   movie = Project.find(params[:id].to_i)
#   movie.destroy
# end


# end


