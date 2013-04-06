require 'test/unit'
require 'rack/test'
require_relative '../movie_server'

class MovieServerTest < Test::Unit::Test < Rack::Test::Methods
	include Rack::Test::Methods

	def app
		Sinatra::Application
	end

	def test_welcome_page
		get '/'
		assert last_response.ok? 
	end


end
