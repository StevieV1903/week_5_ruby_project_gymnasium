require('sinatra')
require('sinatra/contrib/all')
require ('pry')
require_relative( '../models/member.rb' )
require_relative( '../models/session.rb' )
require_relative( '../models/booking.rb' )
also_reload('../models/*')

get '/bookings/?' do
  @bookings = Booking.all()
  erb( :"bookings/index" )
end

# get '/bookings/new' do
#   erb( :"bookings/new" )
# end
