require('sinatra')
require('sinatra/contrib/all')
require ('pry')
require_relative( '../models/gym_sessions.rb' )
also_reload('../models/*')


get '/sessions/?' do
@sessions = Session.all()
erb(:"sessions/index")
end
