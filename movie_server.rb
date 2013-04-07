require 'sinatra'
require 'sqlite3'
require 'pry'

require_relative 'movies'

get '/' do
	erb :index	
end

post '/search' do
	movie = Movie.get_film_info(params[:search])
	@title = movie.title
	@year = movie.year
	@rating = movie.rating
	@genre = movie.genre
	@director = movie.director
	@actors = movie.actors
	@plot = movie.plot
	@poster_url = movie.poster_url
	erb :results
end
