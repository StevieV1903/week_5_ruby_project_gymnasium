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
@member = Member.find( params[:id] )
erb( :"members/show" )
end

post '/members/?' do
  @member = Member.new(params)
  @member.save
  erb( :"members/create" )
end

get '/members/:id/edit' do
  @member = Member.find(params[:id])
  erb(:"members/edit")
end

post '/members/:id/update' do
  Member.new( params ).update
  erb( :"members/update" )
end

post '/members/:id/delete' do
  @member = Member.find( params[:id] )
  @member.delete()
  erb( :"members/delete" )

end
