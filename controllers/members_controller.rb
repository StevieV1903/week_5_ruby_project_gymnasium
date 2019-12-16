require('sinatra')
require('sinatra/contrib/all')
require ('pry')
require_relative( '../models/gym_members.rb' )
also_reload('../models/*')


get '/members/?' do
@members = Member.all()
erb(:"members/index")
end
