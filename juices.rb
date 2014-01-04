require 'sinatra'
require 'json'
require_relative 'dsl'
require_relative 'data'

get '/' do
  haml :index
end

get '/juices' do
  content_type :json

  rcps = RecipeDB.instance.all

  rcps.to_json
end