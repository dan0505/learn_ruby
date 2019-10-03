require 'sinatra'
require 'sinatra/json'

$movies = ['Spiderman', 'The Avengres']

get "/" do
    "This is a movie database!"
end

get "/api/movies" do
    # tell sinatra to return the 
  # movies.erb template that will
  # be embedded into layout.erb
  erb :movies

end

get '/api/movies/:index' do
    index = params[:index].to_i
    json $movies[index]
end

post '/api/movies' do
    # use this syntax to read the content of the request body
    request.body.rewind
    payload = JSON.parse(request.body.read, symbolize_names: true)
    print payload
    # add the movie to the movies array
    $movies.push(payload[:movieName])

    # return the movie
    json payload[:movieName]
end

delete '/api/movies/:index' do
    index = params[:index].to_i
    movieToDelete = $movies[index]
    $movies.delete_at(index)
    json movieToDelete
end


