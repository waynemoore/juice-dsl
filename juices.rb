require 'sinatra'
require 'json'
require_relative 'dsl'
require_relative 'data'

get '/juices' do
  content_type :json

  rcps = RecipeDB.instance.all

  rcps.to_json
end