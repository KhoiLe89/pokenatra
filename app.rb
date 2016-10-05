require 'sinatra'
require 'sinatra/reloader'
require "active_record"

require_relative "db/connection"
require_relative "models/pokemon"

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end
delete '/pokemons/:id' do
  @pokemons=Pokemon.find(params[:id])
  @pokemons.destroy
  redirect '/pokemons'
end
get '/pokemons/:id/edit' do
  @pokemons=Pokemon.find(params[:id])
  erb :"pokemons/edit"
end

put '/pokemons/:id' do
  @pokemons=Pokemon.find(params[:id])
  @pokemons.update(params[:pokemon])
  redirect '/pokemons'
end
get '/pokemons/new' do
  erb :"pokemons/new"
end
post '/pokemons' do
  Pokemon.create(params[:pokemon])
  redirect "/pokemons"
end

get '/pokemons/:id' do ## work on this, can we use name if theres no ID?
  @pokemons = Pokemon.find(params[:id])
  erb :"pokemons/show"
end
