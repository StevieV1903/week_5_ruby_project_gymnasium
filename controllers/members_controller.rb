require('sinatra')
require('sinatra/contrib/all')
require ('pry')
require_relative( '../models/gym_members.rb' )
also_reload('../models/*')


get '/members/?' do
@members = Member.all()
erb( :"members/index" )
end

get '/members/new' do
  erb( :"members/new" )
end

get '/members/:id/?' do
@member = Member.find(params[:id])
erb( :"members/show" )
end
