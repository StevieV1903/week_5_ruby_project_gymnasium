require('sinatra')
require('sinatra/contrib/all')
require ('pry')
require_relative( '../models/gym_members.rb' )
require_relative( '../models/gym_sessions.rb' )
require_relative( '../models/gym_bookings.rb' )
also_reload('../models/*')

get '/bookings/?' do
  @bookings = Booking.all()
  erb( :"bookings/index" )
end
