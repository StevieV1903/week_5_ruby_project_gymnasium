require('sinatra')
require('sinatra/contrib/all')
require ('pry')
require_relative( '../models/gym_sessions.rb' )
also_reload('../models/*')


get '/sessions/?' do
@sessions = Session.all()
erb(:"sessions/index")
end

get '/sessions/new' do
  erb( :"sessions/new" )
end

get '/sessions/:id/?' do
@session = Session.find( params[:id] )
erb( :"sessions/show" )
end

post '/sessions/?' do
  @session = Session.new( params )
  @session.save
  erb( :"sessions/create" )
end

get '/sessions/:id/edit' do
  @session = Session.find( params[:id] )
  erb(:"sessions/edit")
end
#
# post '/members/:id/update' do
#   Member.new( params ).update
#   erb( :"members/update" )
# end
#
# post '/members/:id/delete' do
#   @member = Member.find( params[:id] )
#   @member.delete()
#   erb( :"members/delete" )
#
# end
